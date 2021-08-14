<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-500">
<div class="bg-blue-500 ">
    <div class="bg-white mx-auto text-center w-1/2 py-5 shadow-xl rounded-lg my-96 max-w-2xl">
        <h1 class="text-4xl font-semibold border-b pb-2 mx-6" >Compound Interest Calculator</h1>
        <p class="mx-auto text-center w-1/2 py-5 text-3xl font-mono text-red-600">${error}</p>
        <form action="/" method="post">
            <div class="grid grid-cols-2 gap-4 my-5 mx-8">
                <label for="principal-amount">Principal Amount:<span class="text-gray-500 mx-1">$</span></label>
                <input class="w-full p-1 border-2 placeholder-blue-800 appearance-none rounded-lg focus:outline-none focus:ring-2" id="principal-amount" name="principal-amount" type="number">

                <label for="interest">Interest percentage:</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 appearance-none rounded-lg focus:outline-none focus:ring-2" id="interest" type="number" name="interest" min="1" max="100">

                <label for="years">Years:</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 appearance-none rounded-lg focus:outline-none focus:ring-2" id="years" type="number" name="years">

                <label for="compounding-period">Compounding period:</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 appearance-none rounded-lg focus:outline-none focus:ring-2" id="compounding-period" type="number" name="compounding-period" min="1" max="12">
            </div>

            <button class="bg-blue-300 text-xl font-semibold px-4 py-1 rounded-lg hover:bg-blue-600 hover:text-white" type="submit">Calculate</button>
            <h1 class="text-3xl font-mono text-green-400">Result:${result}</h1>

        </form>
    </div>
</div>
</body>
</html>