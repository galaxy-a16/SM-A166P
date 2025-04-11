.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field public final a:Ld/t0;

.field public final b:Lcom/google/gson/a;

.field public final c:Lcom/google/gson/internal/Excluder;

.field public final d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Ld/t0;Lcom/google/gson/FieldNamingPolicy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Ld/t0;

    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b:Lcom/google/gson/a;

    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/google/gson/internal/Excluder;

    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/b;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/i;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v12, Ljava/lang/Object;

    invoke-virtual {v12, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v13, 0x0

    if-nez v2, :cond_0

    return-object v13

    :cond_0
    iget-object v14, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Ld/t0;

    move-object/from16 v2, p2

    invoke-virtual {v14, v2}, Ld/t0;->a(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/l;

    move-result-object v15

    new-instance v10, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v14, v9

    move-object/from16 v33, v10

    goto/16 :goto_b

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    move-object v7, v1

    move-object/from16 v16, v2

    :goto_0
    if-eq v7, v12, :cond_1

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_f

    aget-object v2, v6, v3

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b(Ljava/lang/reflect/Field;Z)Z

    move-result v17

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b(Ljava/lang/reflect/Field;Z)Z

    move-result v18

    if-nez v17, :cond_3

    if-nez v18, :cond_3

    move/from16 v20, v3

    move/from16 v30, v4

    move/from16 v21, v5

    move-object/from16 v32, v6

    move-object/from16 p2, v7

    move-object v13, v8

    move-object/from16 v33, v10

    move-object/from16 v23, v12

    move-object/from16 v28, v14

    move-object v14, v9

    goto/16 :goto_a

    :cond_3
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v13

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v7, v13, v1}, Lcom/google/gson/internal/a;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v13

    const-class v1, Lr5/b;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lr5/b;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b:Lcom/google/gson/a;

    invoke-interface {v1, v2}, Lcom/google/gson/a;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move/from16 v20, v3

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lr5/b;->value()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lr5/b;->alternate()[Ljava/lang/String;

    move-result-object v1

    move/from16 v20, v3

    array-length v3, v1

    if-nez v3, :cond_5

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_2
    move/from16 v21, v5

    const/16 v19, 0x1

    move-object v5, v1

    goto :goto_4

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v21, v5

    array-length v5, v1

    const/16 v19, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    move/from16 v22, v4

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v22

    goto :goto_3

    :cond_6
    move-object v5, v3

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_d

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    check-cast v12, Ljava/lang/String;

    move-object/from16 v22, v9

    if-eqz v3, :cond_7

    const/16 v17, 0x0

    :cond_7
    invoke-static {v13}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v9

    move-object/from16 v24, v1

    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    move/from16 v25, v3

    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v26, v19

    goto :goto_6

    :cond_8
    const/16 v26, 0x0

    :goto_6
    const-class v1, Lr5/a;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lr5/a;

    if-eqz v1, :cond_9

    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v11, v9, v1}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->b(Ld/t0;Lcom/google/gson/b;Lcom/google/gson/reflect/TypeToken;Lr5/a;)Lcom/google/gson/i;

    move-result-object v1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_a

    move/from16 v27, v19

    goto :goto_8

    :cond_a
    const/16 v27, 0x0

    :goto_8
    if-nez v1, :cond_b

    invoke-virtual {v11, v9}, Lcom/google/gson/b;->c(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/i;

    move-result-object v1

    :cond_b
    move-object/from16 v28, v1

    new-instance v3, Lcom/google/gson/internal/bind/e;

    move-object/from16 v0, v24

    move-object v1, v3

    move-object/from16 v24, v2

    move-object v2, v12

    move-object v11, v3

    move/from16 v3, v17

    move/from16 v29, v4

    const/16 v30, 0x0

    move/from16 v4, v18

    move-object/from16 v31, v5

    move-object/from16 v5, v24

    move-object/from16 v32, v6

    move/from16 v6, v27

    move-object/from16 p2, v7

    move-object/from16 v7, v28

    move-object/from16 v27, v13

    move-object v13, v8

    move-object/from16 v8, p1

    move-object/from16 v28, v14

    move-object/from16 v14, v22

    move-object/from16 v33, v10

    move/from16 v10, v26

    invoke-direct/range {v1 .. v10}, Lcom/google/gson/internal/bind/e;-><init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/i;Lcom/google/gson/b;Lcom/google/gson/reflect/TypeToken;Z)V

    invoke-interface {v14, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/internal/bind/e;

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    move-object v1, v0

    :goto_9
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v7, p2

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v12, v23

    move-object/from16 v2, v24

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move/from16 v4, v29

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move-object/from16 v10, v33

    goto/16 :goto_5

    :cond_d
    move-object v0, v1

    move-object/from16 v32, v6

    move-object/from16 p2, v7

    move-object v13, v8

    move-object/from16 v33, v10

    move-object/from16 v23, v12

    move-object/from16 v28, v14

    const/16 v30, 0x0

    move-object v14, v9

    if-nez v0, :cond_e

    :goto_a
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v7, p2

    move-object v8, v13

    move-object v9, v14

    move/from16 v5, v21

    move-object/from16 v12, v23

    move-object/from16 v14, v28

    move/from16 v4, v30

    move-object/from16 v6, v32

    move-object/from16 v10, v33

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/gson/internal/bind/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    move-object/from16 v24, v2

    move-object v1, v0

    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed making field \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' accessible; either change its visibility or write a custom TypeAdapter for its declaring type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    move-object/from16 p2, v7

    move-object v13, v8

    move-object/from16 v33, v10

    move-object/from16 v23, v12

    move-object/from16 v28, v14

    move-object v14, v9

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v3, p2

    invoke-static {v0, v3, v1, v2}, Lcom/google/gson/internal/a;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v12, v23

    move-object/from16 v14, v28

    move-object/from16 v10, v33

    const/4 v13, 0x0

    goto/16 :goto_0

    :goto_b
    move-object/from16 v0, v33

    invoke-direct {v0, v15, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/l;Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final b(Ljava/lang/reflect/Field;Z)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/google/gson/internal/Excluder;

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/Excluder;->b(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/gson/internal/Excluder;->c(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iget v3, p0, Lcom/google/gson/internal/Excluder;->b:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-wide v3, p0, Lcom/google/gson/internal/Excluder;->a:D

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2

    const-class v0, Lr5/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lr5/c;

    const-class v3, Lr5/d;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lr5/d;

    invoke-virtual {p0, v0, v3}, Lcom/google/gson/internal/Excluder;->e(Lr5/c;Lr5/d;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->c:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/Excluder;->d(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    move p0, v2

    goto :goto_6

    :cond_7
    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->d:Ljava/util/List;

    goto :goto_4

    :cond_8
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->e:Ljava/util/List;

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    new-instance p2, Ld/s0;

    invoke-direct {p2, p1}, Ld/s0;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_a
    :goto_5
    move p0, v1

    :goto_6
    if-nez p0, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method
