.class public abstract Lkotlin/jvm/internal/PropertyReference2;
.super Lkotlin/jvm/internal/PropertyReference;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 1
    sget-object v1, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Lkotlin/reflect/b;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/o;->a:Lkotlin/jvm/internal/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public abstract synthetic get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public getDelegate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/u;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/t;

    invoke-interface {p0, p1, p2}, Lkotlin/reflect/t;->getDelegate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/n;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference2;->getGetter()Lkotlin/reflect/s;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGetter()Lkotlin/reflect/s;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/u;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/t;

    invoke-interface {p0}, Lkotlin/reflect/t;->getGetter()Lkotlin/reflect/s;

    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlin/jvm/internal/PropertyReference2;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
