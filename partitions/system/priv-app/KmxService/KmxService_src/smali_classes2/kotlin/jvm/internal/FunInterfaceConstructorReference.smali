.class public Lkotlin/jvm/internal/FunInterfaceConstructorReference;
.super Lkotlin/jvm/internal/FunctionReference;
.source "SourceFile"


# instance fields
.field private final funInterface:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    iput-object p1, p0, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lkotlin/jvm/internal/FunInterfaceConstructorReference;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lkotlin/jvm/internal/FunInterfaceConstructorReference;

    iget-object p0, p0, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    iget-object p1, p1, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getReflected()Lkotlin/reflect/b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->getReflected()Lkotlin/reflect/f;

    move-result-object p0

    return-object p0
.end method

.method public getReflected()Lkotlin/reflect/f;
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Functional interface constructor does not support reflection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lkotlin/jvm/internal/FunInterfaceConstructorReference;->funInterface:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fun interface "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
