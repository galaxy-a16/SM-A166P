.class public final Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratorSettings"
.end annotation


# static fields
.field public static final empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field public final prettyPrinter:Lcom/fasterxml/jackson/core/k;

.field public final rootValueSeparator:Lcom/fasterxml/jackson/core/l;

.field public final schema:Lcom/fasterxml/jackson/core/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/k;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/l;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/k;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/k;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    return-void
.end method

.method private final _rootValueSeparatorAsString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public initialize(Lcom/fasterxml/jackson/core/f;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/k;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/k;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/core/util/e;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/fasterxml/jackson/core/util/e;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/e;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/k;

    :cond_1
    :goto_0
    iput-object v0, p1, Lcom/fasterxml/jackson/core/f;->a:Lcom/fasterxml/jackson/core/k;

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/f;->H(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V

    :cond_3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/f;->M(Lcom/fasterxml/jackson/core/l;)V

    :cond_4
    return-void
.end method

.method public with(Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/k;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/k;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public with(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/k;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/k;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public with(Lcom/fasterxml/jackson/core/k;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 3

    .line 2
    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/k;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/k;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/k;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public withRootValueSeparator(Lcom/fasterxml/jackson/core/l;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/k;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-direct {p1, v1, v0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/k;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/l;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/k;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/k;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/l;)V

    return-object v1
.end method

.method public withRootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 4

    .line 2
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/k;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-direct {p1, v1, v0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/k;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/l;)V

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->_rootValueSeparatorAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/k;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    new-instance v3, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v3, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/k;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/l;)V

    return-object v1
.end method
