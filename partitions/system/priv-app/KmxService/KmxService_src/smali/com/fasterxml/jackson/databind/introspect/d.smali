.class public final Lcom/fasterxml/jackson/databind/introspect/d;
.super Lcom/fasterxml/jackson/databind/introspect/b;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/j0;


# static fields
.field public static final p:Lp1/v;


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/JavaType;

.field public final b:Ljava/lang/Class;

.field public final c:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field public final d:Ljava/util/List;

.field public final e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field public final f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

.field public final g:Lcom/fasterxml/jackson/databind/introspect/r;

.field public final h:Ljava/lang/Class;

.field public final i:Z

.field public final j:Lcom/fasterxml/jackson/databind/util/a;

.field public k:Lp1/v;

.field public l:Lcom/fasterxml/jackson/databind/introspect/j;

.field public m:Ljava/util/List;

.field public transient n:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lp1/v;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lp1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/d;->p:Lp1/v;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/r;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/b;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Ljava/lang/Class;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    iput-object p6, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iput-object p7, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-object p8, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Lcom/fasterxml/jackson/databind/introspect/r;

    iput-object p9, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iput-boolean p10, p0, Lcom/fasterxml/jackson/databind/introspect/d;->i:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Ljava/lang/Class;

    .line 2
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/n;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Lcom/fasterxml/jackson/databind/introspect/r;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->resolveMemberType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lp1/v;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/d;->k:Lp1/v;

    if-nez v1, :cond_3d

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/d;->p:Lp1/v;

    goto/16 :goto_26

    :cond_0
    const/4 v2, 0x1

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Ljava/lang/Class;

    if-eqz v4, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-boolean v6, v0, Lcom/fasterxml/jackson/databind/introspect/d;->i:Z

    or-int/2addr v5, v6

    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/f;

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-direct {v6, v7, v0, v5}, Lcom/fasterxml/jackson/databind/introspect/f;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/j0;Z)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_6

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/h;->n(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/f;

    move-result-object v5

    array-length v8, v5

    move-object v10, v7

    move-object v11, v10

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v12, v5, v9

    iget-object v13, v12, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v13

    xor-int/2addr v13, v2

    if-nez v13, :cond_2

    goto :goto_2

    :cond_2
    iget v13, v12, Lcom/fasterxml/jackson/databind/util/f;->d:I

    if-gez v13, :cond_3

    iget-object v13, v12, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v13

    iput v13, v12, Lcom/fasterxml/jackson/databind/util/f;->d:I

    :cond_3
    if-nez v13, :cond_4

    move-object v10, v12

    goto :goto_2

    :cond_4
    if-nez v11, :cond_5

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    move-object v10, v7

    move-object v11, v10

    :cond_7
    iget-object v5, v6, Lcom/fasterxml/jackson/databind/introspect/f;->e:Ljava/lang/Object;

    if-nez v11, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    if-nez v10, :cond_8

    goto/16 :goto_c

    :cond_8
    move-object v9, v8

    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v8, :cond_a

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    sget-object v12, Lcom/fasterxml/jackson/databind/introspect/t;->b:[Lcom/fasterxml/jackson/databind/introspect/o;

    if-eqz v4, :cond_13

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/h;->n(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/f;

    move-result-object v13

    array-length v14, v13

    move-object/from16 v16, v7

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_12

    aget-object v2, v13, v15

    iget v3, v2, Lcom/fasterxml/jackson/databind/util/f;->d:I

    if-gez v3, :cond_b

    iget-object v3, v2, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v3

    iput v3, v2, Lcom/fasterxml/jackson/databind/util/f;->d:I

    :cond_b
    if-nez v3, :cond_c

    if-eqz v10, :cond_10

    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-object v7, v5

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/j0;

    invoke-virtual {v6, v10, v2}, Lcom/fasterxml/jackson/databind/introspect/f;->f(Lcom/fasterxml/jackson/databind/util/f;Lcom/fasterxml/jackson/databind/util/f;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v2

    iget-object v10, v10, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {v3, v7, v10, v2, v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/o;[Lcom/fasterxml/jackson/databind/introspect/o;)V

    iput-object v3, v6, Lcom/fasterxml/jackson/databind/introspect/f;->f:Ljava/lang/Object;

    move-object/from16 v18, v13

    const/4 v10, 0x0

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_10

    if-nez v16, :cond_e

    new-array v3, v8, [Lcom/fasterxml/jackson/databind/introspect/z;

    const/4 v7, 0x0

    :goto_6
    move-object/from16 v17, v10

    if-ge v7, v8, :cond_d

    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/z;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    check-cast v13, Lcom/fasterxml/jackson/databind/util/f;

    iget-object v13, v13, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {v10, v13}, Lcom/fasterxml/jackson/databind/introspect/z;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v10, v3, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v10, v17

    move-object/from16 v13, v18

    goto :goto_6

    :cond_d
    move-object/from16 v18, v13

    move-object/from16 v16, v3

    goto :goto_7

    :cond_e
    move-object/from16 v17, v10

    move-object/from16 v18, v13

    :goto_7
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/z;

    iget-object v7, v2, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {v3, v7}, Lcom/fasterxml/jackson/databind/introspect/z;-><init>(Ljava/lang/reflect/Constructor;)V

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v8, :cond_11

    aget-object v10, v16, v7

    invoke-virtual {v3, v10}, Lcom/fasterxml/jackson/databind/introspect/z;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/util/f;

    invoke-virtual {v6, v3, v2}, Lcom/fasterxml/jackson/databind/introspect/f;->i(Lcom/fasterxml/jackson/databind/util/f;Lcom/fasterxml/jackson/databind/util/f;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v2

    invoke-interface {v9, v7, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v17, v10

    move-object/from16 v18, v13

    :cond_11
    :goto_9
    move-object/from16 v10, v17

    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v18

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_12
    move-object/from16 v17, v10

    :cond_13
    if-eqz v10, :cond_14

    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-object v3, v5

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/j0;

    const/4 v7, 0x0

    invoke-virtual {v6, v10, v7}, Lcom/fasterxml/jackson/databind/introspect/f;->f(Lcom/fasterxml/jackson/databind/util/f;Lcom/fasterxml/jackson/databind/util/f;)Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v13

    iget-object v7, v10, Lcom/fasterxml/jackson/databind/util/f;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {v2, v3, v7, v13, v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/o;[Lcom/fasterxml/jackson/databind/introspect/o;)V

    iput-object v2, v6, Lcom/fasterxml/jackson/databind/introspect/f;->f:Ljava/lang/Object;

    :cond_14
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v8, :cond_16

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-nez v3, :cond_15

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/util/f;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/fasterxml/jackson/databind/introspect/f;->i(Lcom/fasterxml/jackson/databind/util/f;Lcom/fasterxml/jackson/databind/util/f;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    move-object v8, v9

    :goto_c
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/h;->m(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v3, :cond_1a

    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v11

    if-nez v11, :cond_17

    const/4 v11, 0x1

    goto :goto_e

    :cond_17
    const/4 v11, 0x0

    :goto_e
    if-nez v11, :cond_18

    goto :goto_f

    :cond_18
    if-nez v7, :cond_19

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_19
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_1a
    if-nez v7, :cond_1b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_23

    :cond_1b
    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/j0;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v3, :cond_1c

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_1c
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_11
    if-ge v12, v10, :cond_22

    aget-object v13, v4, v12

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v14

    if-nez v14, :cond_1d

    const/4 v14, 0x1

    goto :goto_12

    :cond_1d
    const/4 v14, 0x0

    :goto_12
    if-nez v14, :cond_1e

    goto :goto_15

    :cond_1e
    if-nez v11, :cond_1f

    new-array v11, v3, [Lcom/fasterxml/jackson/databind/introspect/z;

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v3, :cond_1f

    new-instance v15, Lcom/fasterxml/jackson/databind/introspect/z;

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-direct {v15, v2}, Lcom/fasterxml/jackson/databind/introspect/z;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    :cond_1f
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/z;

    invoke-direct {v2, v13}, Lcom/fasterxml/jackson/databind/introspect/z;-><init>(Ljava/lang/reflect/Method;)V

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v3, :cond_21

    aget-object v15, v11, v14

    invoke-virtual {v2, v15}, Lcom/fasterxml/jackson/databind/introspect/z;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v6, v2, v5, v13}, Lcom/fasterxml/jackson/databind/introspect/f;->h(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v2

    invoke-virtual {v9, v14, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_20
    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    :cond_21
    :goto_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_22
    const/4 v2, 0x0

    :goto_16
    if-ge v2, v3, :cond_37

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-nez v4, :cond_36

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    array-length v11, v10

    if-eqz v11, :cond_34

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_23

    goto/16 :goto_1d

    :cond_23
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/reflect/ParameterizedType;

    if-nez v12, :cond_24

    goto/16 :goto_1d

    :cond_24
    check-cast v11, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    goto/16 :goto_1d

    :cond_25
    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    array-length v13, v10

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/ArrayList;

    array-length v14, v10

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_17
    array-length v15, v11

    if-ge v14, v15, :cond_32

    aget-object v15, v11, v14

    invoke-static {v15}, Lkotlinx/coroutines/a0;->y(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    if-eqz v15, :cond_30

    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_26

    goto/16 :goto_1d

    :cond_26
    move/from16 v16, v3

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    if-nez v3, :cond_27

    move-object/from16 v18, v1

    goto/16 :goto_1e

    :cond_27
    move-object/from16 v18, v1

    array-length v1, v10

    move-object/from16 v19, v7

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v1, :cond_29

    aget-object v20, v10, v7

    move/from16 v21, v1

    invoke-interface/range {v20 .. v20}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_19

    :cond_28
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v21

    goto :goto_18

    :cond_29
    const/16 v20, 0x0

    :goto_19
    if-nez v20, :cond_2a

    goto/16 :goto_1f

    :cond_2a
    invoke-interface/range {v20 .. v20}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v7, v1

    move-object/from16 v20, v10

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v7, :cond_2c

    move/from16 v21, v7

    aget-object v7, v1, v10

    invoke-static {v5, v3, v7}, Lkotlinx/coroutines/a0;->A(Lcom/fasterxml/jackson/databind/introspect/j0;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/reflect/Type;)Z

    move-result v7

    if-nez v7, :cond_2b

    const/4 v1, 0x0

    goto :goto_1b

    :cond_2b
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v21

    goto :goto_1a

    :cond_2c
    const/4 v1, 0x1

    :goto_1b
    if-eqz v1, :cond_31

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2f

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    goto :goto_1c

    :cond_2d
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v10

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v7

    if-nez v10, :cond_2e

    if-nez v7, :cond_2e

    goto :goto_1f

    :cond_2e
    xor-int/2addr v10, v7

    if-eqz v10, :cond_31

    if-eqz v7, :cond_31

    invoke-virtual {v13, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_2f
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_30
    move-object/from16 v18, v1

    move/from16 v16, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    :cond_31
    :goto_1c
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    move-object/from16 v1, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v20

    goto/16 :goto_17

    :cond_32
    move-object/from16 v18, v1

    move/from16 v16, v3

    move-object/from16 v19, v7

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_1f

    :cond_33
    invoke-static {v12, v13}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/util/List;Ljava/util/List;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    goto :goto_20

    :cond_34
    :goto_1d
    move-object/from16 v18, v1

    move/from16 v16, v3

    :goto_1e
    move-object/from16 v19, v7

    :goto_1f
    const/4 v1, 0x0

    :goto_20
    if-nez v1, :cond_35

    move-object v3, v5

    goto :goto_21

    :cond_35
    new-instance v3, Lp1/l;

    const/4 v7, 0x4

    iget-object v10, v0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-direct {v3, v10, v1, v7}, Lp1/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_21
    const/4 v1, 0x0

    invoke-virtual {v6, v4, v3, v1}, Lcom/fasterxml/jackson/databind/introspect/f;->h(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_36
    move-object/from16 v18, v1

    move/from16 v16, v3

    move-object/from16 v19, v7

    :goto_22
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v16

    move-object/from16 v1, v18

    move-object/from16 v7, v19

    goto/16 :goto_16

    :cond_37
    move-object v1, v9

    :goto_23
    iget-boolean v2, v6, Lcom/fasterxml/jackson/databind/introspect/f;->d:Z

    if-eqz v2, :cond_3c

    iget-object v2, v6, Lcom/fasterxml/jackson/databind/introspect/f;->f:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v3, v6, Lcom/fasterxml/jackson/databind/introspect/t;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v2, :cond_38

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x0

    iput-object v2, v6, Lcom/fasterxml/jackson/databind/introspect/f;->f:Ljava/lang/Object;

    :cond_38
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    :cond_39
    :goto_24
    const/4 v4, -0x1

    add-int/2addr v2, v4

    if-ltz v2, :cond_3a

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_24

    :cond_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, -0x1

    :cond_3b
    :goto_25
    add-int/2addr v2, v4

    if-ltz v2, :cond_3c

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_25

    :cond_3c
    new-instance v2, Lp1/v;

    iget-object v3, v6, Lcom/fasterxml/jackson/databind/introspect/f;->f:Ljava/lang/Object;

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    const/16 v4, 0x8

    invoke-direct {v2, v3, v8, v1, v4}, Lp1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v2

    :goto_26
    iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/d;->k:Lp1/v;

    :cond_3d
    return-object v1
.end method

.method public final c()Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->l:Lcom/fasterxml/jackson/databind/introspect/j;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/j;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/j;-><init>()V

    goto/16 :goto_6

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/i;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Lcom/fasterxml/jackson/databind/introspect/r;

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->i:Z

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-direct {v1, v4, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/i;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/r;Z)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Ljava/lang/Class;

    invoke-virtual {v1, p0, v3, v2, v4}, Lcom/fasterxml/jackson/databind/introspect/i;->e(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v1, Lcom/fasterxml/jackson/databind/introspect/i;->d:Lcom/fasterxml/jackson/databind/introspect/r;

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/fasterxml/jackson/databind/introspect/r;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    :goto_1
    new-instance v5, Lp1/l;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v7

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-direct {v5, v9, v7, v8}, Lp1/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v5, v4, v2, v6}, Lcom/fasterxml/jackson/databind/introspect/i;->e(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v5, v3}, Lcom/fasterxml/jackson/databind/introspect/r;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, p0, v0, v2, v5}, Lcom/fasterxml/jackson/databind/introspect/i;->f(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/fasterxml/jackson/databind/introspect/t;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/z;

    iget-object v8, v7, Lcom/fasterxml/jackson/databind/introspect/z;->a:Ljava/lang/String;

    const-string v9, "hashCode"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v7, Lcom/fasterxml/jackson/databind/introspect/z;->b:[Ljava/lang/Class;

    array-length v8, v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    :try_start_0
    iget-object v7, v7, Lcom/fasterxml/jackson/databind/introspect/z;->a:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/h;

    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/h;->c:Lcom/fasterxml/jackson/databind/introspect/n;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/fasterxml/jackson/databind/introspect/t;->c(Lcom/fasterxml/jackson/databind/introspect/n;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/n;

    move-result-object v8

    iput-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/h;->c:Lcom/fasterxml/jackson/databind/introspect/n;

    iput-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/h;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/j;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/j;-><init>()V

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/h;

    iget-object v4, v3, Lcom/fasterxml/jackson/databind/introspect/h;->b:Ljava/lang/reflect/Method;

    if-nez v4, :cond_9

    move-object v5, v6

    goto :goto_5

    :cond_9
    new-instance v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/h;->a:Lcom/fasterxml/jackson/databind/introspect/j0;

    iget-object v3, v3, Lcom/fasterxml/jackson/databind/introspect/h;->c:Lcom/fasterxml/jackson/databind/introspect/n;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/n;->b()Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v3

    invoke-direct {v5, v7, v4, v3, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/o;[Lcom/fasterxml/jackson/databind/introspect/o;)V

    :goto_5
    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/j;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/j;-><init>(Ljava/util/LinkedHashMap;)V

    move-object v0, v1

    :goto_6
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->l:Lcom/fasterxml/jackson/databind/introspect/j;

    :cond_b
    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->m:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/f;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Lcom/fasterxml/jackson/databind/introspect/r;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/introspect/d;->i:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/f;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/r;Z)V

    invoke-virtual {v1, p0, v0}, Lcom/fasterxml/jackson/databind/introspect/f;->e(Lcom/fasterxml/jackson/databind/introspect/j0;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/g;

    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iget-object v4, v2, Lcom/fasterxml/jackson/databind/introspect/g;->c:Lcom/fasterxml/jackson/databind/introspect/n;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/n;->b()Lcom/fasterxml/jackson/databind/introspect/o;

    move-result-object v4

    iget-object v5, v2, Lcom/fasterxml/jackson/databind/introspect/g;->a:Lcom/fasterxml/jackson/databind/introspect/j0;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/g;->b:Ljava/lang/reflect/Field;

    invoke-direct {v3, v5, v2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;-><init>(Lcom/fasterxml/jackson/databind/introspect/j0;Ljava/lang/reflect/Field;Lcom/fasterxml/jackson/databind/introspect/o;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->m:Ljava/util/List;

    :cond_3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/databind/util/h;->r(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/d;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/util/a;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public final getModifiers()I
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public final getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/JavaType;

    return-object p0
.end method

.method public final hasAnnotation(Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/util/a;->has(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public final hasOneOf([Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/util/a;->hasOneOf([Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[AnnotedClass "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Ljava/lang/Class;

    const-string v1, "]"

    invoke-static {p0, v0, v1}, Landroidx/activity/b;->e(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
