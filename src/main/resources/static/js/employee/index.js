let post = new Object();

$(document).ready(() => {
    getAll();
    
    $("form").submit(e => {
        e.preventDefault();
        create();
    });
});

function getAll() {
    $.ajax({
        url: "/post/get-all",
        type: "GET",
        success: (res) => {
            let element = "";
            res.forEach(data => {
                element = element + `<tr>
                    <td>${data.userId}</td>
                    <td>${data.title}</td>
                    <td>${data.body}</td>
                    <td>
                        <button 
                            class='btn btn-sm btn-primary'
                            data-bs-toggle="modal" 
                            data-bs-target="#postModal"
                            onclick="getById('${data.id}')"
                        >
                            <i class='fas fa-sm fa-pencil-alt'></i>
                        </button>
                        <button class='btn btn-sm btn-danger'>
                            <i class='fas fa-sm fa-trash'></i>
                        </button>
                    `;
            });

            $("table tbody").append(element);
        }
    });
}

function getById(id) {
    $.ajax({
        url: `/post/${id}`,
        type: 'GET',
        success: (res) => {
            setForm(res);
        }
    });
}

function create() {
    post = {
        title: $("#title").val(),
        userId: $("#userId").val(),
        body: $("#body").val()
    };
    
    console.log(post);
}

function setForm(data) {
    $("#userId").val(data.userId);
    $("#title").val(data.title);
    $("#body").val(data.body);
}