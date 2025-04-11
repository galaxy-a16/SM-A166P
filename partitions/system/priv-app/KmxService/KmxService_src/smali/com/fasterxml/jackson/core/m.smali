.class public abstract Lcom/fasterxml/jackson/core/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I

.field public static final e:I

.field public static final f:I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/m;->d:I

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/m;->e:I

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/m;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/fasterxml/jackson/core/m;->d:I

    iput v0, p0, Lcom/fasterxml/jackson/core/m;->a:I

    sget v0, Lcom/fasterxml/jackson/core/m;->e:I

    iput v0, p0, Lcom/fasterxml/jackson/core/m;->b:I

    sget v0, Lcom/fasterxml/jackson/core/m;->f:I

    iput v0, p0, Lcom/fasterxml/jackson/core/m;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 2

    iget v0, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    iget v1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/fasterxml/jackson/core/m;->a:I

    iput v1, p0, Lcom/fasterxml/jackson/core/m;->b:I

    iput p1, p0, Lcom/fasterxml/jackson/core/m;->c:I

    return-void
.end method
