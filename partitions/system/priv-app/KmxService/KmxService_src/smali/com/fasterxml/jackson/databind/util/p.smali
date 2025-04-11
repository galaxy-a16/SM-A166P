.class public abstract Lcom/fasterxml/jackson/databind/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOP:Lcom/fasterxml/jackson/databind/util/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$NopTransformer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer$NopTransformer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/p;->NOP:Lcom/fasterxml/jackson/databind/util/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chainedTransformer(Lcom/fasterxml/jackson/databind/util/p;Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/util/p;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;-><init>(Lcom/fasterxml/jackson/databind/util/p;Lcom/fasterxml/jackson/databind/util/p;)V

    return-object v0
.end method

.method public static simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/p;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/fasterxml/jackson/databind/util/n;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/util/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/databind/util/o;

    invoke-direct {p1, p0, v1}, Lcom/fasterxml/jackson/databind/util/o;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_3
    if-eqz v3, :cond_4

    new-instance p0, Lcom/fasterxml/jackson/databind/util/o;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/o;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_4
    sget-object p0, Lcom/fasterxml/jackson/databind/util/p;->NOP:Lcom/fasterxml/jackson/databind/util/p;

    return-object p0
.end method


# virtual methods
.method public abstract reverse(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract transform(Ljava/lang/String;)Ljava/lang/String;
.end method
