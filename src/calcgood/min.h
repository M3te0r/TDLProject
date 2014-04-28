typedef enum { doubtype,intetype, identype, operantype } nodeEnum;


typedef struct {
	double real; /* double constante*/
} doubNodeType;


typedef struct {
    int value;                  /* int constante */
} conNodeType;


typedef struct {
    int i;            
} idNodeType;

/* operators */
typedef struct {
    int oper;  
    int nops; 
    struct nodeTypeTag **op;
} oprNodeType;

typedef struct nodeTypeTag {
    nodeEnum type;   

    union {
		doubNodeType dou;      /* double constante*/
        conNodeType con;        /* int constante */
        idNodeType id;          /* identifiers */
        oprNodeType opr;        /* operators */
    };
} nodeType;

extern int sym[26];
