package com.hegx.service.impl;

import com.hegx.base.dao.BaseDao;
import com.hegx.base.service.impl.BaseServiceImpl;
import com.hegx.dao.OrderDao;
import com.hegx.dto.OrderEntityDto;
import com.hegx.po.OrderEntity;
import com.hegx.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by hegx on 2017/4/24.
 */
@Service
public class OrderServiceImpl extends BaseServiceImpl<OrderEntityDto> implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    protected BaseDao<OrderEntityDto> getBaseDao() {
        return this.orderDao;
    }


    @Override
    public OrderEntity getByOrderId(Long id) {
        return orderDao.getByOrderId(id);
    }
}
