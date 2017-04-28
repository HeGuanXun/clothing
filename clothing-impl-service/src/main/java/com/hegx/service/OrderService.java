package com.hegx.service;

import com.hegx.base.service.BaseService;
import com.hegx.dto.OrderEntityDto;
import com.hegx.po.OrderEntity;

/**
 * Created by hegx on 2017/4/24.
 */
public interface OrderService extends BaseService<OrderEntityDto> {

    public OrderEntity getByOrderId(Long id);
}
