$domain = $args[0]
$version = $args[1]

Write-Output( "Tagging Database Image" )
docker tag $domain/octopetshop-database:latest $domain/octopetshop-database:latest
docker tag $domain/octopetshop-database:latest $domain/octopetshop-database:$version
Write-Output( "Pushing Database Image" )
docker push $domain/octopetshop-database:$version

Write-Output( "Tagging Product Service Image" )
docker tag $domain/octopetshop-productservice:latest $domain/octopetshop-productservice:latest
docker tag $domain/octopetshop-productservice:latest $domain/octopetshop-productservice:$version
Write-Output( "Pushing Product Service Image" )
docker push $domain/octopetshop-productservice:$version

Write-Output( "Tagging Shopping Cart Service Image" )
docker tag $domain/octopetshop-shoppingcartservice:latest $domain/octopetshop-shoppingcartservice:latest
docker tag $domain/octopetshop-shoppingcartservice:latest $domain/octopetshop-shoppingcartservice:$version
Write-Output( "Pushing Shopping Cart Service Image" )
docker push $domain/octopetshop-shoppingcartservice:$version

Write-Output( "Tagging Web Image" )
docker tag $domain/octopetshop-web:latest $domain/octopetshop-web:latest
docker tag $domain/octopetshop-web:latest $domain/octopetshop-web:$version
Write-Output( "Pushing Web Image" )
docker push $domain/octopetshop-web:$version