.class public abstract Lc2/b;
.super Lx1/a;
.source "SourceFile"


# static fields
.field public static final n:[I


# instance fields
.field public final g:Lcom/fasterxml/jackson/core/io/d;

.field public h:[I

.field public i:I

.field public j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field public k:Lcom/fasterxml/jackson/core/l;

.field public l:Z

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->j:[I

    sput-object v0, Lc2/b;->n:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lx1/a;-><init>(ILcom/fasterxml/jackson/core/j;)V

    sget-object p3, Lc2/b;->n:[I

    iput-object p3, p0, Lc2/b;->h:[I

    sget-object p3, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

    iput-object p3, p0, Lc2/b;->k:Lcom/fasterxml/jackson/core/l;

    iput-object p1, p0, Lc2/b;->g:Lcom/fasterxml/jackson/core/io/d;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7f

    iput p1, p0, Lc2/b;->i:I

    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_HEX_UPPER_CASE:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    iput-boolean p1, p0, Lc2/b;->m:Z

    sget-object p1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lc2/b;->l:Z

    return-void
.end method


# virtual methods
.method public final H(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V
    .locals 0

    iput-object p1, p0, Lc2/b;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-nez p1, :cond_0

    sget-object p1, Lc2/b;->n:[I

    iput-object p1, p0, Lc2/b;->h:[I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeCodesForAscii()[I

    move-result-object p1

    iput-object p1, p0, Lc2/b;->h:[I

    :goto_0
    return-void
.end method

.method public final M(Lcom/fasterxml/jackson/core/l;)V
    .locals 0

    iput-object p1, p0, Lc2/b;->k:Lcom/fasterxml/jackson/core/l;

    return-void
.end method

.method public final g1(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Can not %s, expecting field name (context: %s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h1(ILjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v1

    :cond_0
    invoke-virtual {p0, p2}, Lc2/b;->g1(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->writeRootValueSeparator(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->writeArrayValueSeparator(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->beforeArrayValues(Lcom/fasterxml/jackson/core/f;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lx1/a;->e:Lc2/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/k;->beforeObjectEntries(Lcom/fasterxml/jackson/core/f;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final t(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/f;
    .locals 3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    iget v1, p0, Lx1/a;->c:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lx1/a;->c:I

    sget v1, Lx1/a;->f:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lx1/a;->d:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_1

    iput v1, p0, Lc2/b;->i:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lx1/a;->e:Lc2/d;

    const/4 v2, 0x0

    iput-object v2, v0, Lc2/d;->d:Lva/e;

    iput-object v0, p0, Lx1/a;->e:Lc2/d;

    :cond_2
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc2/b;->l:Z

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_HEX_UPPER_CASE:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_4

    iput-boolean v1, p0, Lc2/b;->m:Z

    :cond_4
    :goto_1
    return-object p0
.end method
