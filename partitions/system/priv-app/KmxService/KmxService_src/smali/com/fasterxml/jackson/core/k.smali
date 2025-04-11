.class public interface abstract Lcom/fasterxml/jackson/core/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final r:Lcom/fasterxml/jackson/core/util/Separators;

.field public static final s:Lcom/fasterxml/jackson/core/io/SerializedString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/fasterxml/jackson/core/util/Separators;->createDefaultInstance()Lcom/fasterxml/jackson/core/util/Separators;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/k;->r:Lcom/fasterxml/jackson/core/util/Separators;

    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    const-string v1, " "

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/core/k;->s:Lcom/fasterxml/jackson/core/io/SerializedString;

    return-void
.end method


# virtual methods
.method public abstract beforeArrayValues(Lcom/fasterxml/jackson/core/f;)V
.end method

.method public abstract beforeObjectEntries(Lcom/fasterxml/jackson/core/f;)V
.end method

.method public abstract writeArrayValueSeparator(Lcom/fasterxml/jackson/core/f;)V
.end method

.method public abstract writeEndArray(Lcom/fasterxml/jackson/core/f;I)V
.end method

.method public abstract writeEndObject(Lcom/fasterxml/jackson/core/f;I)V
.end method

.method public abstract writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/f;)V
.end method

.method public abstract writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/f;)V
.end method

.method public abstract writeRootValueSeparator(Lcom/fasterxml/jackson/core/f;)V
.end method

.method public abstract writeStartArray(Lcom/fasterxml/jackson/core/f;)V
.end method

.method public abstract writeStartObject(Lcom/fasterxml/jackson/core/f;)V
.end method
