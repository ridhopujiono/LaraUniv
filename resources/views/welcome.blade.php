<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Universitas PRGI Ronggolawe Tuban | Login</title>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700");

    :root {
        --black: #010100;
        --soft-black: #3d3d4e;
        --soft-gray: #868b8e;
        --gray: #EFEFF6;
        --white: #ffffff;
        --light-white-900: #f9f9f9;
        --main: #2e8bc0;
        --shadow: 0 0 10px -3px rgba(0, 0, 0, .1);
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    html {
        height: 100vh;
    }

    body {
        background-image: url("{{url('background.jpg')}}");
        background-size: cover;
        background-repeat: no-repeat;
        font-family: "Poppins", Arial, Helvetica, sans-serif;
    }

    .container {
        background-color: var(--white);
        width: 30%;
        margin: 75px auto;
        padding: 2em;
        box-shadow: var(--shadow);
        border-radius: 5px;
    }

    .title {
        font-size: 1.5em;
        font-weight: 600;
        color: var(--main);
        text-align: center;
    }

    .subtitle {
        font-size: .8em;
        font-weight: 500;
        color: var(--soft-gray);
        text-align: center;
    }

    .formContainer {
        display: flex;
        flex-direction: column;
    }

    .formInput {
        font-family: "Poppins", Arial, Helvetica, sans-serif;
        font-size: .8em;
        font-weight: 400;
        color: var(--soft-black);
        margin-top: 1em;
        border: solid 2px var(--gray);
        border-radius: 5px;
        padding: 15px;
        box-shadow: var(--shadow);
    }

    .formButton {
        font-family: "Poppins", Arial, Helvetica, sans-serif;
        font-size: .9em;
        font-weight: 700;
        color: var(--light-white-900);
        border: none;
        border-radius: 5px;
        padding: 1em;
        margin-top: 2em;
        background-color: #2e8bc0;
        cursor: pointer;
        transition: ease-in-out .3s;
    }

    .formButton:hover {
        background-color: var(--soft-black);
    }

    ::placeholder {
        font-family: "Poppins", Arial, Helvetica, sans-serif;
        font-weight: 400;
        opacity: 1;
        /* untuk pengguna firefox */
    }

    @media screen and (max-width: 970px) {
        .container {
            background-color: var(--white);
            width: 50%;
            margin: 75px auto;
            padding: 2em;
            box-shadow: var(--shadow);
            border-radius: 5px;
        }
    }

    @media screen and (max-width: 680px) {
        .container {
            background-color: var(--white);
            width: 75%;
            margin: 75px auto;
            padding: 2em;
            box-shadow: var(--shadow);
            border-radius: 5px;
        }
    }

    @media screen and (max-width: 490px) {
        .container {
            background-color: var(--white);
            width: 90%;
            margin: 50px auto;
            padding: 2em;
            box-shadow: var(--shadow);
            border-radius: 5px;
        }
    }
</style>

<body>

    <!-- <a href='https://www.freepik.com/vectors/blue-polygon'>Blue polygon vector created by Harryarts - www.freepik.com</a> -->
    <div class="container">
        <p class="title">Universitas Ronggolawe</p>
        <p class="subtitle">Portal Masuk</p>
        <div>
            <form class="formContainer" action="{{url('auth')}}" method="post">
                @csrf
                @error('name')
                <div class="alert alert-danger text-center" style="background-color: #fff3f4;
                font-size: 12px;
                padding: 10px;
                color: #ff7171;">data anda tidak ditemukan di sistem</div>
                @enderror
                <input class="formInput" type="text" name="name" id="" placeholder="Nama Pengguna">
                <input class="formInput" type="password" name="password" id="" placeholder="Kata Sandi">
                <button class="formButton" type="submit">Masuk</button>
            </form>
        </div>
    </div>
    <div class="container">
        <p class="subtitle" style="color: red;font-weight: 600; margin-bottom: 5px">Akses</p>
        <hr>
        <div style="display: flex;justify-content: space-between;">
            <div>
                <p style="white-space: pre-line;font-size: 11px;color: #6b6b6b;">
                    <b>Mahasiswa : </b>
                    Nama Pengguna : 1412200053
                    Password : 123
                </p>

            </div>
            <p style="white-space: pre-line;font-size: 11px;color: #6b6b6b;">
                <b>Admin (CRUD) :</b>
                Nama Pengguna : admin
                Password : 123
            </p>
            <div>

            </div>
        </div>
    </div>
</body>

</html>
