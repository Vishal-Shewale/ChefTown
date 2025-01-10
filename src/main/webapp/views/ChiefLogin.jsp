<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

  <title>Registration Form</title>
</head>

<body class="bg-light">

  <%
    String msg = (String) request.getAttribute("msg");
    if (msg != null) {
  %>
  <h1 class="text-center text-danger"><%=msg%></h1>
  <%
    }
  %>

  <section class="container w-50 border rounded-5 bg-white p-5" style="margin-top: 4rem">
    <h2 class="text-center fs-5 text-danger">Chief Login</h2>
    <hr class="hr-danger">

    <form action="clogin" method="post">

      <div class="row mt-3">
        <div class="col-md-12">
          <div>
            <label for="email">Email</label>
            <input type="email" id="email" name="uname" class="form-control" placeholder="Enter Email" required>
          </div>
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-md-12">
          <div>
            <label for="password">Enter PassWord</label>
            <input type="password" id="password" name="upass" class="form-control" placeholder="Enter Password" required>
          </div>
        </div>
      </div>

       <div class="offset-md-3 col-md-6 mt-3 g-3">
        <div>
          <button type="submit" class="btn btn-success w-100 g-3">Login</button>
          
        </div>
      </div>

     
    </form>
  </section>

</body>

</html>
