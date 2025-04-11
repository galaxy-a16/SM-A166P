.class public final Lcom/fasterxml/jackson/databind/deser/impl/j;
.super Ld/g0;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ld/g0;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->c:I

    invoke-direct {p0, p1, p2}, Ld/g0;-><init>(Ld/g0;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->c:I

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/j;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Ld/g0;->b:Ljava/lang/Object;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    check-cast v1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iget-object p0, p0, Ld/g0;->b:Ljava/lang/Object;

    invoke-virtual {v1, p1, p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
