.class public final Lcom/fasterxml/jackson/core/d;
.super Lcom/fasterxml/jackson/core/m;
.source "SourceFile"


# instance fields
.field public final g:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field public final h:Lcom/fasterxml/jackson/core/l;

.field public final i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/m;-><init>()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/d;->h:Lcom/fasterxml/jackson/core/l;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/d;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/m;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory;->getCharacterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/d;->g:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object v0, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/d;->h:Lcom/fasterxml/jackson/core/l;

    iget p1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_maximumNonEscapedChar:I

    iput p1, p0, Lcom/fasterxml/jackson/core/d;->i:I

    return-void
.end method
