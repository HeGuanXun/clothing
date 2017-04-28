package com.hegx.dao;

import com.hegx.base.dao.BaseDao;
import com.hegx.dto.OrderEntityDto;
import com.hegx.po.OrderEntity;

/**
 * Created by hegx on 2017/4/24.
 */
public interface OrderDao extends BaseDao<OrderEntityDto> {
    public OrderEntity getByOrderId(Long id);
}
