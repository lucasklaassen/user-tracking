deploy-admin:
	cd ./admin-app && npm run build;
	docker-compose up -d deploy;
	docker-compose exec deploy bash -c "cd code && aws configure set default.s3.signature_version s3v4 && aws --profile=personal --region us-west-2 s3 sync admin-app/dist/ s3://user-tracking.lucasklaassen.com/ --delete --acl=public-read && aws cloudfront create-invalidation --profile=personal --region us-west-2 --distribution-id E3VR1YEW2C7OR4 --paths '/*'"

deploy-client:
	docker-compose up -d deploy;
	docker-compose exec deploy bash -c "cd code && aws configure set default.s3.signature_version s3v4 && aws --profile=personal --region us-west-2 s3 sync client-site/ s3://record.lucasklaassen.com/ --delete --acl=public-read && aws cloudfront create-invalidation --profile=personal --region us-west-2 --distribution-id E1HLNUQ4DPLR1B --paths '/*'"

deploy-backend:
	echo "fill this out";