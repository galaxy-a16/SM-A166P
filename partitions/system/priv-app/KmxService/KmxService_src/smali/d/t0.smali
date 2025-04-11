.class public final Ld/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/a0;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Ld/t0;->a:I

    iput-object p2, p0, Ld/t0;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Ld/t0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ld/u0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld/t0;->a:I

    .line 2
    iput-object p1, p0, Ld/t0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/l;
    .locals 12

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Ld/t0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v5

    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed making constructor \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x28

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    move v10, v3

    :goto_0
    array-length v11, v9

    if-ge v10, v11, :cond_2

    if-lez v10, :cond_1

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v11, v9, v10

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/16 v9, 0x29

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' accessible; either change its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_3

    new-instance v1, Lp1/e;

    invoke-direct {v1, p0, v6, v2}, Lp1/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_3

    :cond_3
    new-instance v6, Lp1/l;

    invoke-direct {v6, v2, p0, v1}, Lp1/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v6

    goto :goto_3

    :catch_1
    :goto_2
    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v5, Lcom/google/gson/internal/e;

    invoke-direct {v5, v4}, Lcom/google/gson/internal/e;-><init>(I)V

    goto/16 :goto_5

    :cond_5
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/google/gson/internal/b;

    invoke-direct {v1, v0, v4}, Lcom/google/gson/internal/b;-><init>(Ljava/lang/reflect/Type;I)V

    goto :goto_4

    :cond_6
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_7

    new-instance v5, Lcom/google/gson/internal/c;

    invoke-direct {v5, v1}, Lcom/google/gson/internal/c;-><init>(I)V

    goto/16 :goto_5

    :cond_7
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v5, Lcom/google/gson/internal/d;

    invoke-direct {v5, v1}, Lcom/google/gson/internal/d;-><init>(I)V

    goto/16 :goto_5

    :cond_8
    new-instance v5, Lcom/google/gson/internal/e;

    invoke-direct {v5, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    goto :goto_5

    :cond_9
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-class v1, Ljava/util/EnumMap;

    if-ne p1, v1, :cond_a

    new-instance v1, Lcom/google/gson/internal/b;

    invoke-direct {v1, v0, v3}, Lcom/google/gson/internal/b;-><init>(Ljava/lang/reflect/Type;I)V

    :goto_4
    move-object v5, v1

    goto :goto_5

    :cond_a
    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v5, Lcom/google/gson/internal/c;

    invoke-direct {v5, v3}, Lcom/google/gson/internal/c;-><init>(I)V

    goto :goto_5

    :cond_b
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v5, Lcom/google/gson/internal/d;

    invoke-direct {v5, v3}, Lcom/google/gson/internal/d;-><init>(I)V

    goto :goto_5

    :cond_c
    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v5, Lcom/google/gson/internal/e;

    invoke-direct {v5, v3}, Lcom/google/gson/internal/e;-><init>(I)V

    goto :goto_5

    :cond_d
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_e

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v5, Lcom/google/gson/internal/c;

    invoke-direct {v5, v4}, Lcom/google/gson/internal/c;-><init>(I)V

    goto :goto_5

    :cond_e
    new-instance v5, Lcom/google/gson/internal/d;

    invoke-direct {v5, v4}, Lcom/google/gson/internal/d;-><init>(I)V

    :cond_f
    :goto_5
    if-eqz v5, :cond_10

    return-object v5

    :cond_10
    iget-boolean v0, p0, Ld/t0;->b:Z

    if-eqz v0, :cond_11

    new-instance v0, Lp1/v;

    invoke-direct {v0, p0, p1}, Lp1/v;-><init>(Ld/t0;Ljava/lang/Class;)V

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lp1/c;

    invoke-direct {v0, p0, p1, v2}, Lp1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_6
    return-object v0
.end method

.method public final b(Lh/n;Z)V
    .locals 2

    iget-boolean p2, p0, Ld/t0;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Ld/t0;->b:Z

    iget-object p2, p0, Ld/t0;->c:Ljava/lang/Object;

    check-cast p2, Ld/u0;

    iget-object v0, p2, Ld/u0;->a:Landroidx/appcompat/widget/s4;

    iget-object v0, v0, Landroidx/appcompat/widget/s4;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/widget/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/p;->m()Z

    iget-object v0, v0, Landroidx/appcompat/widget/p;->x:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh/z;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lh/z;->j:Lh/g0;

    invoke-virtual {v0}, Lh/g0;->dismiss()V

    :cond_1
    iget-object p2, p2, Ld/u0;->b:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/t0;->b:Z

    return-void
.end method

.method public final j(Lh/n;)Z
    .locals 1

    iget-object p0, p0, Ld/t0;->c:Ljava/lang/Object;

    check-cast p0, Ld/u0;

    iget-object p0, p0, Ld/u0;->b:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ld/t0;->a:I

    iget-object v1, p0, Ld/t0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast v1, Ljava/lang/String;

    iget-boolean p0, p0, Ld/t0;->b:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x7

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
