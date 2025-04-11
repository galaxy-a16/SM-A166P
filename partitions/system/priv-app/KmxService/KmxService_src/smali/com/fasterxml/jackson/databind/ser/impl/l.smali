.class public final Lcom/fasterxml/jackson/databind/ser/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/j;


# instance fields
.field public final synthetic a:Lcom/fasterxml/jackson/databind/ser/c;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/c;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/l;->a:Lcom/fasterxml/jackson/databind/ser/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/l;->a:Lcom/fasterxml/jackson/databind/ser/c;

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-interface {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/c;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method

.method public final serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/l;->a:Lcom/fasterxml/jackson/databind/ser/c;

    check-cast p4, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/c;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-void
.end method
