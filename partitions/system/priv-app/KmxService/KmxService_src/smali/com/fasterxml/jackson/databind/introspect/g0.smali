.class public final Lcom/fasterxml/jackson/databind/introspect/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/y;I)V
    .locals 0

    iput p2, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->a:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/y;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :goto_1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/appcompat/widget/y;->g:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v0, v0, Landroidx/appcompat/widget/y;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/y;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->b:Ljava/lang/Object;

    return-object v1

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/c;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/c;-><init>(Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/g0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
