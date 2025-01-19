erDiagram
    USERS ||--o{ ORDERS : "places"
    USERS {
        int user_id PK
        string email
        string first_name
        string last_name
        string phone
    }
    
    PRODUCTS ||--o{ PRODUCT_VARIANTS : "has"
    PRODUCTS {
        int product_id PK
        string name
        string description
        decimal price
        int category_id FK
        string dimensions
        boolean assembly_required
    }

    CATEGORIES ||--o{ PRODUCTS : "has"
    CATEGORIES {
        int category_id PK
        string name
        int parent_id FK
        string description
    }

    ORDERS ||--o{ ORDER_ITEMS : "contains"
    ORDERS {
        int order_id PK
        int user_id FK
        decimal total_amount
        string status
        date delivery_date
    }

    PRODUCT_VARIANTS ||--o{ ORDER_ITEMS : "included in"
    PRODUCT_VARIANTS {
        int variant_id PK
        int product_id FK
        string color
        string sku
        decimal price
        int stock
    }

    ORDER_ITEMS {
        int order_item_id PK
        int order_id FK
        int variant_id FK
        int quantity
        decimal price
    }

    INVENTORY ||--o{ PRODUCT_VARIANTS : "tracks"
    INVENTORY {
        int inventory_id PK
        int variant_id FK
        int warehouse_id FK
        int quantity
        int reserved
    }

    WAREHOUSES ||--o{ INVENTORY : "stores"
    WAREHOUSES {
        int warehouse_id PK
        string name
        string address
        int capacity
    }

    REVIEWS ||--o{ PRODUCTS : "rates"
    REVIEWS {
        int review_id PK
        int product_id FK
        int user_id FK
        int rating
        string comment
    }

    SUPPLIERS ||--o{ PRODUCTS : "supplies"
    SUPPLIERS {
        int supplier_id PK
        string name
        string contact
        string email
    }
