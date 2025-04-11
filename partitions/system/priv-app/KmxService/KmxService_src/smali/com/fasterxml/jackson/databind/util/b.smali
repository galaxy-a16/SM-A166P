.class public final Lcom/fasterxml/jackson/databind/util/b;
.super Lcom/fasterxml/jackson/databind/util/t;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/b;->e:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/util/b;->e:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [J

    return-object p0

    :pswitch_1
    new-array p0, p1, [I

    return-object p0

    :pswitch_2
    new-array p0, p1, [F

    return-object p0

    :pswitch_3
    new-array p0, p1, [D

    return-object p0

    :pswitch_4
    new-array p0, p1, [B

    return-object p0

    :pswitch_5
    new-array p0, p1, [Z

    return-object p0

    :goto_0
    new-array p0, p1, [S

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
