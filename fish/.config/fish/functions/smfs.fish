function smfs --wraps='sail artisan migrate:fresh --sed' --wraps='sail artisan migrate:fresh --seed' --description 'alias smfs=sail artisan migrate:fresh --seed'
  sail artisan migrate:fresh --seed $argv; 
end
