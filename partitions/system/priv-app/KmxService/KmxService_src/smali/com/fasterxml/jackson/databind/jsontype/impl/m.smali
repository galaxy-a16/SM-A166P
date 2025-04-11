.class public abstract Lcom/fasterxml/jackson/databind/jsontype/impl/m;
.super Lcom/fasterxml/jackson/databind/jsontype/k;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/jsontype/h;

.field public final b:Lcom/fasterxml/jackson/databind/d;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/h;Lcom/fasterxml/jackson/databind/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/k;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->a:Lcom/fasterxml/jackson/databind/jsontype/h;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->b:Lcom/fasterxml/jackson/databind/d;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;
    .locals 2

    iget-object v0, p2, Lf2/c;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p2, Lf2/c;->a:Ljava/lang/Object;

    iget-object v1, p2, Lf2/c;->b:Ljava/lang/Class;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/m;->a:Lcom/fasterxml/jackson/databind/jsontype/h;

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1, v0}, Lcom/fasterxml/jackson/databind/jsontype/h;->c(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, p2, Lf2/c;->c:Ljava/lang/Object;

    :cond_1
    iget-object p0, p2, Lf2/c;->c:Ljava/lang/Object;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/f;->a1(Lf2/c;)V

    return-object p2
.end method

.method public f(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/f;->b1(Lf2/c;)V

    return-object p2
.end method
