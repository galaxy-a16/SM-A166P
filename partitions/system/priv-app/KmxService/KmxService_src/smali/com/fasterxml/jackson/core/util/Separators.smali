.class public Lcom/fasterxml/jackson/core/util/Separators;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final arrayValueSeparator:C

.field private final objectEntrySeparator:C

.field private final objectFieldValueSeparator:C


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x3a

    const/16 v1, 0x2c

    invoke-direct {p0, v0, v1, v1}, Lcom/fasterxml/jackson/core/util/Separators;-><init>(CCC)V

    return-void
.end method

.method public constructor <init>(CCC)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    iput-char p2, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    iput-char p3, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    return-void
.end method

.method public static createDefaultInstance()Lcom/fasterxml/jackson/core/util/Separators;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/util/Separators;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/Separators;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getArrayValueSeparator()C
    .locals 0

    iget-char p0, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    return p0
.end method

.method public getObjectEntrySeparator()C
    .locals 0

    iget-char p0, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    return p0
.end method

.method public getObjectFieldValueSeparator()C
    .locals 0

    iget-char p0, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    return p0
.end method

.method public withArrayValueSeparator(C)Lcom/fasterxml/jackson/core/util/Separators;
    .locals 2

    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/Separators;

    iget-char v1, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    iget-char p0, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    invoke-direct {v0, v1, p0, p1}, Lcom/fasterxml/jackson/core/util/Separators;-><init>(CCC)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public withObjectEntrySeparator(C)Lcom/fasterxml/jackson/core/util/Separators;
    .locals 2

    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/Separators;

    iget-char v1, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    iget-char p0, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    invoke-direct {v0, v1, p1, p0}, Lcom/fasterxml/jackson/core/util/Separators;-><init>(CCC)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public withObjectFieldValueSeparator(C)Lcom/fasterxml/jackson/core/util/Separators;
    .locals 2

    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/Separators;

    iget-char v1, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    iget-char p0, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    invoke-direct {v0, p1, v1, p0}, Lcom/fasterxml/jackson/core/util/Separators;-><init>(CCC)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
