.class public final Lcom/fasterxml/jackson/databind/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public final a:Lcom/fasterxml/jackson/core/f;

.field public final b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/core/f;ZLcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/y;->a:Lcom/fasterxml/jackson/core/f;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/y;->b:Z

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getValueSerializer()Lcom/fasterxml/jackson/databind/o;

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p0

    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/y;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/y;->d:Z

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/y;->c:Z

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/y;->a:Lcom/fasterxml/jackson/core/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/y;->c:Z

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/f;->w0()V

    :cond_0
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/y;->b:Z

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/f;->close()V

    :cond_1
    return-void
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/y;->d:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/y;->a:Lcom/fasterxml/jackson/core/f;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->flush()V

    :cond_0
    return-void
.end method
