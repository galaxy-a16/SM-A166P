.class public abstract Lcom/fasterxml/jackson/databind/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDependencies()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/fasterxml/jackson/databind/t;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract getTypeId()Ljava/lang/Object;
.end method

.method public abstract setupModule(Lcom/fasterxml/jackson/databind/s;)V
.end method

.method public abstract version()Lcom/fasterxml/jackson/core/Version;
.end method
