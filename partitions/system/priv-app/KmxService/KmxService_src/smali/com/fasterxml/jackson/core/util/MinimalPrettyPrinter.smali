.class public Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/core/k;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _rootValueSeparator:Ljava/lang/String;

.field protected _separators:Lcom/fasterxml/jackson/core/util/Separators;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/k;->s:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    sget-object p1, Lcom/fasterxml/jackson/core/k;->r:Lcom/fasterxml/jackson/core/util/Separators;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_separators:Lcom/fasterxml/jackson/core/util/Separators;

    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lcom/fasterxml/jackson/core/f;)V
    .locals 0

    return-void
.end method

.method public beforeObjectEntries(Lcom/fasterxml/jackson/core/f;)V
    .locals 0

    return-void
.end method

.method public setRootValueSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    return-void
.end method

.method public setSeparators(Lcom/fasterxml/jackson/core/util/Separators;)Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_separators:Lcom/fasterxml/jackson/core/util/Separators;

    return-object p0
.end method

.method public writeArrayValueSeparator(Lcom/fasterxml/jackson/core/f;)V
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_separators:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/Separators;->getArrayValueSeparator()C

    move-result p0

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->K0(C)V

    return-void
.end method

.method public writeEndArray(Lcom/fasterxml/jackson/core/f;I)V
    .locals 0

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->K0(C)V

    return-void
.end method

.method public writeEndObject(Lcom/fasterxml/jackson/core/f;I)V
    .locals 0

    const/16 p0, 0x7d

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->K0(C)V

    return-void
.end method

.method public writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/f;)V
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_separators:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/Separators;->getObjectEntrySeparator()C

    move-result p0

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->K0(C)V

    return-void
.end method

.method public writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/f;)V
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_separators:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/Separators;->getObjectFieldValueSeparator()C

    move-result p0

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->K0(C)V

    return-void
.end method

.method public writeRootValueSeparator(Lcom/fasterxml/jackson/core/f;)V
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->_rootValueSeparator:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->M0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeStartArray(Lcom/fasterxml/jackson/core/f;)V
    .locals 0

    const/16 p0, 0x5b

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->K0(C)V

    return-void
.end method

.method public writeStartObject(Lcom/fasterxml/jackson/core/f;)V
    .locals 0

    const/16 p0, 0x7b

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->K0(C)V

    return-void
.end method
