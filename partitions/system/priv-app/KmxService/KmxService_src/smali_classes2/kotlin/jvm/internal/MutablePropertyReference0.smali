.class public abstract Lkotlin/jvm/internal/MutablePropertyReference0;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Lkotlin/reflect/b;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/o;->a:Lkotlin/jvm/internal/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public abstract synthetic get()Ljava/lang/Object;
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/u;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/i;

    invoke-interface {p0}, Lkotlin/reflect/p;->getDelegate()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/n;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->getGetter()Lkotlin/reflect/o;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGetter()Lkotlin/reflect/o;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/u;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/i;

    invoke-interface {p0}, Lkotlin/reflect/p;->getGetter()Lkotlin/reflect/o;

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSetter()Lkotlin/reflect/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->getSetter()Lkotlin/reflect/h;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSetter()Lkotlin/reflect/h;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/u;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/i;

    invoke-interface {p0}, Lkotlin/reflect/i;->getSetter()Lkotlin/reflect/h;

    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference0;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic set(Ljava/lang/Object;)V
.end method
