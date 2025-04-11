.class public Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "SourceFile"


# instance fields
.field protected transient _beanDesc:Lcom/fasterxml/jackson/databind/c;

.field protected transient _property:Lcom/fasterxml/jackson/databind/introspect/q;

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/c;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/q;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p3, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/c;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/q;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/c;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/q;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p3, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/c;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/q;

    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)V

    return-object v0
.end method


# virtual methods
.method public getBeanDescription()Lcom/fasterxml/jackson/databind/c;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/c;

    return-object p0
.end method

.method public getProperty()Lcom/fasterxml/jackson/databind/introspect/q;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/q;

    return-object p0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object p0
.end method
