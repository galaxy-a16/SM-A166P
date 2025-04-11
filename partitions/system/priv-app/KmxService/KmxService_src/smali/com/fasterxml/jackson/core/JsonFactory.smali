.class public Lcom/fasterxml/jackson/core/JsonFactory;
.super Lcom/fasterxml/jackson/core/TokenStreamFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    }
.end annotation


# static fields
.field protected static final DEFAULT_FACTORY_FEATURE_FLAGS:I

.field protected static final DEFAULT_GENERATOR_FEATURE_FLAGS:I

.field protected static final DEFAULT_PARSER_FEATURE_FLAGS:I

.field public static final DEFAULT_QUOTE_CHAR:C = '\"'

.field public static final DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/l;

.field public static final FORMAT_NAME_JSON:Ljava/lang/String; = "JSON"

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected final transient _byteSymbolCanonicalizer:Le2/b;

.field protected _characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field protected _factoryFeatures:I

.field protected _generatorFeatures:I

.field protected _inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

.field protected _maximumNonEscapedChar:I

.field protected _objectCodec:Lcom/fasterxml/jackson/core/j;

.field protected _outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

.field protected _parserFeatures:I

.field protected final _quoteChar:C

.field protected final transient _rootCharSymbols:Le2/e;

.field protected _rootValueSeparator:Lcom/fasterxml/jackson/core/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/j;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;-><init>()V

    invoke-static {}, Le2/e;->b()Le2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Le2/e;

    invoke-static {}, Le2/b;->g()Le2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Le2/b;

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_maximumNonEscapedChar:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_maximumNonEscapedChar:I

    iget-char p1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_quoteChar:C

    iput-char p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_quoteChar:C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/d;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;-><init>()V

    invoke-static {}, Le2/e;->b()Le2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Le2/e;

    invoke-static {}, Le2/b;->g()Le2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Le2/b;

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    iget v1, p1, Lcom/fasterxml/jackson/core/m;->a:I

    iput v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    iget v1, p1, Lcom/fasterxml/jackson/core/m;->b:I

    iput v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget v1, p1, Lcom/fasterxml/jackson/core/m;->c:I

    iput v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    iget-object v0, p1, Lcom/fasterxml/jackson/core/d;->g:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object v0, p1, Lcom/fasterxml/jackson/core/d;->h:Lcom/fasterxml/jackson/core/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    iget p1, p1, Lcom/fasterxml/jackson/core/d;->i:I

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_maximumNonEscapedChar:I

    const/16 p1, 0x22

    iput-char p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_quoteChar:C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/j;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;-><init>()V

    invoke-static {}, Le2/e;->b()Le2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Le2/e;

    invoke-static {}, Le2/b;->g()Le2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Le2/b;

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    const/16 p1, 0x22

    iput-char p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_quoteChar:C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/m;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/m;",
            "Z)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TokenStreamFactory;-><init>()V

    invoke-static {}, Le2/e;->b()Le2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Le2/e;

    invoke-static {}, Le2/b;->g()Le2/b;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Le2/b;

    sget p2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    sget p2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    sget p2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    sget-object p2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    iget v0, p1, Lcom/fasterxml/jackson/core/m;->a:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    iget v0, p1, Lcom/fasterxml/jackson/core/m;->b:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/core/m;->c:I

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    const/4 p1, 0x0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_maximumNonEscapedChar:I

    const/16 p1, 0x22

    iput-char p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_quoteChar:C

    return-void
.end method

.method private final _isJSONFactory()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JSON"

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final _requireJSONFactory(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_isJSONFactory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static builder()Lcom/fasterxml/jackson/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/core/m;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/core/d;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public _checkInvalidCopy(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed copy(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->version()Lcom/fasterxml/jackson/core/Version;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") does not override copy(); it has to"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public _createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->canHandleBinaryNatively()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;->construct(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p0

    return-object p0
.end method

.method public _createContentReference(Ljava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->canHandleBinaryNatively()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/ContentReference;->construct(ZLjava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p0

    return-object p0
.end method

.method public _createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/core/io/ContentReference;->unknown()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/a;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/core/io/d;-><init>(Lcom/fasterxml/jackson/core/util/a;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V

    return-object v0
.end method

.method public _createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/d;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/a;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p0

    invoke-direct {v0, v1, p0, p2}, Lcom/fasterxml/jackson/core/io/d;-><init>(Lcom/fasterxml/jackson/core/util/a;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V

    return-object v0
.end method

.method public _createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/f;
    .locals 7

    new-instance v6, Lc2/j;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    iget-char v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_quoteChar:C

    move-object v0, v6

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lc2/j;-><init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/j;Ljava/io/Writer;C)V

    iget p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_maximumNonEscapedChar:I

    if-lez p1, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, v6, Lc2/b;->i:I

    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz p1, :cond_2

    invoke-virtual {v6, p1}, Lc2/b;->H(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V

    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/l;

    if-eq p0, p1, :cond_3

    iput-object p0, v6, Lc2/b;->k:Lcom/fasterxml/jackson/core/l;

    :cond_3
    return-object v6
.end method

.method public _createNonBlockingContext(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/d;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/a;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/fasterxml/jackson/core/io/d;-><init>(Lcom/fasterxml/jackson/core/util/a;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V

    return-object v0
.end method

.method public _createParser(Ljava/io/DataInput;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;
    .locals 8

    const-string v0, "InputData source not (yet?) supported for this format (%s)"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_requireJSONFactory(Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0xef

    if-eq v0, v1, :cond_0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0xbb

    const-string v2, "Unexpected byte 0x"

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 2
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Le2/b;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual {v0, v1}, Le2/b;->l(I)Le2/b;

    move-result-object v6

    new-instance v0, Lc2/g;

    iget v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget-object v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    move-object v1, v0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lc2/g;-><init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/DataInput;Lcom/fasterxml/jackson/core/j;Le2/b;I)V

    return-object v0

    .line 3
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " following 0xEF 0xBB; should get 0xBF as part of UTF-8 BOM"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " following 0xEF; should get 0xBB as part of UTF-8 BOM"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;
    .locals 6

    :try_start_0
    new-instance v0, Lc2/a;

    invoke-direct {v0, p2, p1}, Lc2/a;-><init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Le2/b;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Le2/e;

    iget v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual/range {v0 .. v5}, Lc2/a;->a(ILcom/fasterxml/jackson/core/j;Le2/b;Le2/e;I)Lx1/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    iget-boolean p2, p2, Lcom/fasterxml/jackson/core/io/d;->d:Z

    if-eqz p2, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
.end method

.method public _createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;
    .locals 7

    new-instance v6, Lc2/f;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Le2/e;

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    .line 6
    new-instance v5, Le2/e;

    .line 7
    iget-object v1, v0, Le2/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le2/d;

    iget v3, v0, Le2/e;->c:I

    invoke-direct {v5, v0, p0, v3, v1}, Le2/e;-><init>(Le2/e;IILe2/d;)V

    move-object v0, v6

    move-object v1, p2

    move-object v3, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Lc2/f;-><init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/Reader;Lcom/fasterxml/jackson/core/j;Le2/e;)V

    return-object v6
.end method

.method public _createParser([BIILcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;
    .locals 6

    .line 10
    new-instance v0, Lc2/a;

    invoke-direct {v0, p4, p1, p2, p3}, Lc2/a;-><init>(Lcom/fasterxml/jackson/core/io/d;[BII)V

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Le2/b;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Le2/e;

    iget v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual/range {v0 .. v5}, Lc2/a;->a(ILcom/fasterxml/jackson/core/j;Le2/b;Le2/e;I)Lx1/b;

    move-result-object p0

    return-object p0
.end method

.method public _createParser([CIILcom/fasterxml/jackson/core/io/d;Z)Lcom/fasterxml/jackson/core/g;
    .locals 10

    new-instance v9, Lc2/f;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Le2/e;

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    .line 11
    new-instance v4, Le2/e;

    .line 12
    iget-object v1, v0, Le2/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le2/d;

    iget v5, v0, Le2/e;->c:I

    invoke-direct {v4, v0, p0, v5, v1}, Le2/e;-><init>(Le2/e;IILe2/d;)V

    add-int v7, p2, p3

    move-object v0, v9

    move-object v1, p4

    move-object v5, p1

    move v6, p2

    move v8, p5

    .line 14
    invoke-direct/range {v0 .. v8}, Lc2/f;-><init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/j;Le2/e;[CIIZ)V

    return-object v9
.end method

.method public _createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/f;
    .locals 7

    new-instance v6, Lc2/h;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    iget-char v5, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_quoteChar:C

    move-object v0, v6

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lc2/h;-><init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/j;Ljava/io/OutputStream;C)V

    iget p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_maximumNonEscapedChar:I

    if-lez p1, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, v6, Lc2/b;->i:I

    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz p1, :cond_2

    invoke-virtual {v6, p1}, Lc2/b;->H(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V

    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/l;

    if-eq p0, p1, :cond_3

    iput-object p0, v6, Lc2/b;->k:Lcom/fasterxml/jackson/core/l;

    :cond_3
    return-object v6
.end method

.method public _createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;
    .locals 0

    sget-object p0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne p2, p0, :cond_0

    new-instance p0, Lcom/fasterxml/jackson/core/io/k;

    invoke-direct {p0, p3, p1}, Lcom/fasterxml/jackson/core/io/k;-><init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/OutputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p0
.end method

.method public final _decorate(Ljava/io/DataInput;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/DataInput;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/DataInput;)Ljava/io/DataInput;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final _decorate(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/InputStream;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final _decorate(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/OutputStream;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final _decorate(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Reader;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final _decorate(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public _getBufferRecycler()Lcom/fasterxml/jackson/core/util/a;
    .locals 5

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/fasterxml/jackson/core/util/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/util/a;

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/fasterxml/jackson/core/util/a;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/a;-><init>()V

    sget-object v1, Lcom/fasterxml/jackson/core/util/b;->a:Lp1/v;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, v1, Lp1/v;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v3, v1, Lp1/v;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v3, v1, Lp1/v;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_2

    iget-object v4, v1, Lp1/v;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Lcom/fasterxml/jackson/core/util/a;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/a;-><init>()V

    return-object p0
.end method

.method public canHandleBinaryNatively()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canParseAsync()Z
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_isJSONFactory()Z

    move-result p0

    return p0
.end method

.method public canUseCharArrays()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canUseSchema(Lcom/fasterxml/jackson/core/c;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final configure(Lcom/fasterxml/jackson/core/JsonFactory$Feature;Z)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->enable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->disable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    .line 2
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    .line 3
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public copy()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 2

    const-class v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_checkInvalidCopy(Ljava/lang/Class;)V

    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/j;)V

    return-object v0
.end method

.method public createGenerator(Ljava/io/DataOutput;)Lcom/fasterxml/jackson/core/f;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_createDataOutputWrapper(Ljava/io/DataOutput;)Ljava/io/OutputStream;

    move-result-object p1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public createGenerator(Ljava/io/DataOutput;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_createDataOutputWrapper(Ljava/io/DataOutput;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_fileOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 3
    iput-object p2, v0, Lcom/fasterxml/jackson/core/io/d;->c:Lcom/fasterxml/jackson/core/JsonEncoding;

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/f;
    .locals 1

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    .line 6
    iput-object p2, v0, Lcom/fasterxml/jackson/core/io/d;->c:Lcom/fasterxml/jackson/core/JsonEncoding;

    .line 7
    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/f;
    .locals 2

    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    return-object p0
.end method

.method public createJsonParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createJsonParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createJsonParser([B)Lcom/fasterxml/jackson/core/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([B)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createJsonParser([BII)Lcom/fasterxml/jackson/core/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createNonBlockingByteArrayParser()Lcom/fasterxml/jackson/core/g;
    .locals 3

    const-string v0, "Non-blocking source not (yet?) supported for this format (%s)"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_requireJSONFactory(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createNonBlockingContext(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Le2/b;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual {v1, v2}, Le2/b;->l(I)Le2/b;

    move-result-object v1

    new-instance v2, Ld2/b;

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    invoke-direct {v2, v0, p0, v1}, Ld2/b;-><init>(Lcom/fasterxml/jackson/core/io/d;ILe2/b;)V

    return-object v2
.end method

.method public createNonBlockingByteBufferParser()Lcom/fasterxml/jackson/core/g;
    .locals 3

    const-string v0, "Non-blocking source not (yet?) supported for this format (%s)"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_requireJSONFactory(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createNonBlockingContext(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_byteSymbolCanonicalizer:Le2/b;

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual {v1, v2}, Le2/b;->l(I)Le2/b;

    move-result-object v1

    new-instance v2, Ld2/a;

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    invoke-direct {v2, v0, p0, v1}, Ld2/a;-><init>(Lcom/fasterxml/jackson/core/io/d;ILe2/b;)V

    return-object v2
.end method

.method public createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/g;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/DataInput;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/DataInput;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/DataInput;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/g;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_fileInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/g;
    .locals 2

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/g;
    .locals 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/g;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-nez v0, :cond_1

    const v0, 0x8000

    if-gt v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->canUseCharArrays()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v4

    .line 5
    iget-object v0, v4, Lcom/fasterxml/jackson/core/io/d;->i:[C

    .line 6
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/util/a;->b(II)[C

    move-result-object v2

    iput-object v2, v4, Lcom/fasterxml/jackson/core/io/d;->i:[C

    .line 7
    invoke-virtual {p1, v1, v3, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    const/4 p1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser([CIILcom/fasterxml/jackson/core/io/d;Z)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/g;
    .locals 2

    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_decorate(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createParser([B)Lcom/fasterxml/jackson/core/g;
    .locals 4

    .line 9
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, p1

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;[BII)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser([BIILcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createParser([BII)Lcom/fasterxml/jackson/core/g;
    .locals 2

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_checkRangeBoundsForByteArray([BII)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/d;[BII)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser([BIILcom/fasterxml/jackson/core/io/d;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createParser([C)Lcom/fasterxml/jackson/core/g;
    .locals 2

    .line 11
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([CII)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public createParser([CII)Lcom/fasterxml/jackson/core/g;
    .locals 8

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/TokenStreamFactory;->_checkRangeBoundsForCharArray([CII)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/CharArrayReader;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContentReference(Ljava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Lcom/fasterxml/jackson/core/io/ContentReference;Z)Lcom/fasterxml/jackson/core/io/d;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser([CIILcom/fasterxml/jackson/core/io/d;Z)Lcom/fasterxml/jackson/core/g;

    move-result-object p0

    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    return-object p0
.end method

.method public getCharacterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-object p0
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/j;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public getFormatGeneratorFeatures()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/fasterxml/jackson/core/JsonFactory;

    if-ne p0, v0, :cond_0

    const-string p0, "JSON"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormatParserFeatures()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFormatReadFeatureType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/core/b;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormatWriteFeatureType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/core/b;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGeneratorFeatures()I
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    return p0
.end method

.method public getInputDecorator()Lcom/fasterxml/jackson/core/io/InputDecorator;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    return-object p0
.end method

.method public getOutputDecorator()Lcom/fasterxml/jackson/core/io/OutputDecorator;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    return-object p0
.end method

.method public final getParserFeatures()I
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    return p0
.end method

.method public getRootValueSeparator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hasFormat(Lz1/a;)Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/core/JsonFactory;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->hasJSONFormat(Lz1/a;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasJSONFormat(Lz1/a;)Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 5

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->h()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->i()B

    move-result p0

    const/16 v0, -0x11

    if-ne p0, v0, :cond_6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->h()Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->i()B

    move-result p0

    const/16 v0, -0x45

    if-eq p0, v0, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->h()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->i()B

    move-result p0

    const/16 v0, -0x41

    if-eq p0, v0, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->h()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->i()B

    move-result p0

    :cond_6
    invoke-static {p1, p0}, Lc2/a;->e(Lz1/a;B)I

    move-result p0

    if-gez p0, :cond_7

    goto :goto_1

    :cond_7
    const/16 v0, 0x7b

    const/16 v1, 0x22

    if-ne p0, v0, :cond_9

    invoke-static {p1}, Lc2/a;->d(Lz1/a;)I

    move-result p0

    if-gez p0, :cond_8

    goto :goto_1

    :cond_8
    if-eq p0, v1, :cond_a

    const/16 p1, 0x7d

    if-ne p0, p1, :cond_15

    goto :goto_0

    :cond_9
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_b

    invoke-static {p1}, Lc2/a;->d(Lz1/a;)I

    move-result p0

    if-gez p0, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    sget-object p0, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_6

    :cond_b
    sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->WEAK_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-ne p0, v1, :cond_c

    goto :goto_2

    :cond_c
    const/16 v1, 0x30

    const/16 v2, 0x39

    if-gt p0, v2, :cond_d

    if-lt p0, v1, :cond_d

    goto :goto_2

    :cond_d
    const/16 v3, 0x2d

    if-ne p0, v3, :cond_10

    invoke-static {p1}, Lc2/a;->d(Lz1/a;)I

    move-result p0

    if-gez p0, :cond_e

    :goto_1
    sget-object p0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_6

    :cond_e
    if-gt p0, v2, :cond_15

    if-lt p0, v1, :cond_15

    :cond_f
    :goto_2
    move-object p0, v0

    goto :goto_6

    :cond_10
    const/16 v1, 0x6e

    if-ne p0, v1, :cond_11

    const-string p0, "ull"

    goto :goto_3

    :cond_11
    const/16 v1, 0x74

    if-ne p0, v1, :cond_12

    const-string p0, "rue"

    goto :goto_3

    :cond_12
    const/16 v1, 0x66

    if-ne p0, v1, :cond_15

    const-string p0, "alse"

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_f

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->h()Z

    move-result v3

    if-nez v3, :cond_13

    sget-object p0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_6

    :cond_13
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->i()B

    move-result v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_14

    sget-object p0, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_6

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    :goto_5
    sget-object p0, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    :goto_6
    return-object p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 0

    .line 3
    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/StreamReadFeature;)Z
    .locals 0

    .line 4
    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Z
    .locals 0

    .line 5
    iget p0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/j;)V

    return-object v0
.end method

.method public rebuild()Lcom/fasterxml/jackson/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/core/m;"
        }
    .end annotation

    const-string v0, "Factory implementation for format (%s) MUST override `rebuild()` method"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_requireJSONFactory(Ljava/lang/String;)V

    new-instance v0, Lcom/fasterxml/jackson/core/d;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/d;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    return-object v0
.end method

.method public requiresCustomCodec()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public requiresPropertyOrdering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-object p0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public setInputDecorator(Lcom/fasterxml/jackson/core/io/InputDecorator;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    return-object p0
.end method

.method public setOutputDecorator(Lcom/fasterxml/jackson/core/io/OutputDecorator;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    return-object p0
.end method

.method public setRootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/l;

    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 0

    sget-object p0, Lc2/e;->a:Lcom/fasterxml/jackson/core/Version;

    return-object p0
.end method
