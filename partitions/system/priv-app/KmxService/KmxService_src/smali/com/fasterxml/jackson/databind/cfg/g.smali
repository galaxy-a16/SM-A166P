.class public abstract Lcom/fasterxml/jackson/databind/cfg/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;

    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->values()[Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/util/f;->enabledByDefault()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result v6

    or-int/2addr v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/JsonNodeFeature;->values()[Lcom/fasterxml/jackson/databind/cfg/JsonNodeFeature;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    move v6, v4

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v7, v1, v4

    invoke-interface {v7}, Lcom/fasterxml/jackson/core/util/f;->enabledByDefault()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    move-result v7

    or-int/2addr v6, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {v0, v5, v3, v6, v3}, Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;-><init>(IIII)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/g;->a:Lcom/fasterxml/jackson/databind/cfg/DatatypeFeatures;

    return-void
.end method
