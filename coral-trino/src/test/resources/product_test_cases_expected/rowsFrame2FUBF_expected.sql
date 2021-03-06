select `orderkey`, `suppkey`, `quantity`, round(sum(`quantity`) over (partition by `suppkey` order by `orderkey` rows between `following`(2) and unbounded_following), 5) as `total_quantity`
from `tpch`.`tiny`.`lineitem`
where `partkey` = 272