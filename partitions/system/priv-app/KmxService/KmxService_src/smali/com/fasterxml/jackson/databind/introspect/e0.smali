.class public final Lcom/fasterxml/jackson/databind/introspect/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/h0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/fasterxml/jackson/databind/introspect/i0;


# direct methods
.method public synthetic constructor <init>(Lcom/fasterxml/jackson/databind/introspect/i0;I)V
    .locals 0

    iput p2, p0, Lcom/fasterxml/jackson/databind/introspect/e0;->a:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/e0;->b:Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/introspect/e0;->a:I

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/e0;->b:Lcom/fasterxml/jackson/databind/introspect/i0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
