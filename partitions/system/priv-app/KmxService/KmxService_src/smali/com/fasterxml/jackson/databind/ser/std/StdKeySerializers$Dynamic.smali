.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected transient _dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/ser/impl/e;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    return-void
.end method


# virtual methods
.method public _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/i;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/i;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    new-instance p3, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    const/16 v0, 0x8

    invoke-direct {p3, v0, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/i;->c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/impl/i;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    return-object p3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/fasterxml/jackson/databind/z;->findKeySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p3

    new-instance v0, Lp1/c;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/i;->c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/impl/i;

    move-result-object p2

    const/4 v1, 0x5

    invoke-direct {v0, v1, p3, p2}, Lp1/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, v0, Lp1/c;->c:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Lcom/fasterxml/jackson/databind/ser/impl/i;

    if-eq p1, p3, :cond_1

    check-cast p2, Lcom/fasterxml/jackson/databind/ser/impl/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    :cond_1
    iget-object p0, v0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->visitStringFormat(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/ser/impl/e;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    return-object p0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/i;->d(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1, v0, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/i;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    :cond_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method
