.class public final Lcom/samsung/android/kmxservice/common/update/JsonSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/kmxservice/common/update/JsonSerializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/JsonSerializer;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/update/JsonSerializer;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/JsonSerializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/JsonSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getJson()Lkotlinx/serialization/json/b;
    .locals 15

    sget-object p0, Lcom/samsung/android/kmxservice/common/update/JsonSerializer$json$1;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/JsonSerializer$json$1;

    sget-object v0, Lkotlinx/serialization/json/b;->d:Lkotlinx/serialization/json/a;

    const-string v1, "from"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "builderAction"

    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/serialization/json/g;

    invoke-direct {v1, v0}, Lkotlinx/serialization/json/g;-><init>(Lkotlinx/serialization/json/b;)V

    invoke-interface {p0, v1}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, v1, Lkotlinx/serialization/json/g;->i:Z

    if-eqz p0, :cond_1

    iget-object p0, v1, Lkotlinx/serialization/json/g;->j:Ljava/lang/String;

    const-string v0, "type"

    invoke-static {p0, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-boolean p0, v1, Lkotlinx/serialization/json/g;->f:Z

    const-string v0, "    "

    iget-object v2, v1, Lkotlinx/serialization/json/g;->g:Ljava/lang/String;

    if-nez p0, :cond_3

    invoke-static {v2, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_4

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Indent should not be specified when default printing mode is used"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v2, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    move v0, p0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x20

    if-eq v3, v5, :cond_5

    const/16 v5, 0x9

    if-eq v3, v5, :cond_5

    const/16 v5, 0xd

    if-eq v3, v5, :cond_5

    const/16 v5, 0xa

    if-ne v3, v5, :cond_4

    goto :goto_2

    :cond_4
    move v4, p0

    :cond_5
    :goto_2
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move p0, v4

    :goto_3
    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    const-string p0, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    new-instance p0, Lkotlinx/serialization/json/i;

    iget-boolean v3, v1, Lkotlinx/serialization/json/g;->a:Z

    iget-boolean v4, v1, Lkotlinx/serialization/json/g;->c:Z

    iget-boolean v5, v1, Lkotlinx/serialization/json/g;->d:Z

    iget-boolean v6, v1, Lkotlinx/serialization/json/g;->e:Z

    iget-boolean v7, v1, Lkotlinx/serialization/json/g;->f:Z

    iget-boolean v8, v1, Lkotlinx/serialization/json/g;->b:Z

    iget-object v9, v1, Lkotlinx/serialization/json/g;->g:Ljava/lang/String;

    iget-boolean v10, v1, Lkotlinx/serialization/json/g;->h:Z

    iget-boolean v11, v1, Lkotlinx/serialization/json/g;->i:Z

    iget-object v12, v1, Lkotlinx/serialization/json/g;->j:Ljava/lang/String;

    iget-boolean v13, v1, Lkotlinx/serialization/json/g;->k:Z

    iget-boolean v14, v1, Lkotlinx/serialization/json/g;->l:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v14}, Lkotlinx/serialization/json/i;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZ)V

    new-instance v0, Lkotlinx/serialization/json/p;

    iget-object v1, v1, Lkotlinx/serialization/json/g;->m:Lkotlinx/serialization/modules/b;

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/json/p;-><init>(Lkotlinx/serialization/json/i;Lkotlinx/serialization/modules/b;)V

    return-object v0
.end method
