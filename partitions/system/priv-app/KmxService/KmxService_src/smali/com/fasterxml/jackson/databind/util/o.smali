.class public final Lcom/fasterxml/jackson/databind/util/o;
.super Lcom/fasterxml/jackson/databind/util/p;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/fasterxml/jackson/databind/util/o;->a:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/o;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/o;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/o;->a:I

    const-string v1, "\')]"

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/o;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "[PrefixTransformer(\'"

    invoke-static {v0, p0, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    const-string v0, "[SuffixTransformer(\'"

    invoke-static {v0, p0, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/o;->a:I

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/o;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p1, p0}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
