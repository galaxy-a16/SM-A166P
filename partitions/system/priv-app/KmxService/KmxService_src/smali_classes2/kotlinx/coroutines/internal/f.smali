.class public abstract Lkotlinx/coroutines/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/lang/Throwable;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/f;->b(Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lkotlinx/coroutines/internal/f;->a:I

    :try_start_0
    sget v0, Lkotlinx/coroutines/internal/g;->a:I

    sget-object v0, Lkotlinx/coroutines/internal/e0;->h:Lkotlinx/coroutines/internal/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Lkotlinx/coroutines/internal/e0;->h:Lkotlinx/coroutines/internal/e0;

    :goto_0
    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lvb/b;
    .locals 9

    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$nullResult$1;->INSTANCE:Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$nullResult$1;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/f;->b(Ljava/lang/Class;I)I

    move-result v2

    sget v3, Lkotlinx/coroutines/internal/f;->a:I

    if-eq v3, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-instance v2, Lr/i;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lr/i;-><init>(I)V

    const-string v3, "<this>"

    invoke-static {p0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, p0

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    array-length v3, p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v3, "copyOf(this, size)"

    invoke-static {p0, v3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, p0

    if-le v3, v4, :cond_3

    invoke-static {p0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/collections/l;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v5, v3

    if-eqz v5, :cond_9

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/lang/Throwable;

    if-eq v5, v4, :cond_6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    goto :goto_2

    :cond_5
    aget-object v5, v3, v1

    invoke-static {v5, v6}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    aget-object v3, v3, v4

    invoke-static {v3, v7}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$1;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$1;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_3

    :cond_6
    aget-object v3, v3, v1

    invoke-static {v3, v7}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v3, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$2;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$2;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_3

    :cond_7
    invoke-static {v3, v6}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$3;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$3;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    new-instance v3, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$4;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$4;-><init>(Ljava/lang/reflect/Constructor;)V

    :goto_3
    if-eqz v3, :cond_4

    move-object v0, v3

    :cond_a
    :goto_4
    return-object v0
.end method

.method public static final b(Ljava/lang/Class;I)I
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v1, v5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p0, p1

    :cond_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
