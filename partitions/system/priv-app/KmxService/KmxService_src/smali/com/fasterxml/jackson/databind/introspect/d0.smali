.class public final Lcom/fasterxml/jackson/databind/introspect/d0;
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

    iput p2, p0, Lcom/fasterxml/jackson/databind/introspect/d0;->a:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d0;->b:Lcom/fasterxml/jackson/databind/introspect/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/introspect/d0;->a:I

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/d0;->b:Lcom/fasterxml/jackson/databind/introspect/i0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findViews(Lcom/fasterxml/jackson/databind/introspect/b;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/introspect/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/i0;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/introspect/a0;)Lcom/fasterxml/jackson/databind/introspect/a0;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
