.class public abstract Lu6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu6/b;


# instance fields
.field public final b:Lu6/h;


# direct methods
.method public constructor <init>(Lu6/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/j;->b:Lu6/h;

    return-void
.end method


# virtual methods
.method public final c()Lf6/h;
    .locals 0

    iget-object p0, p0, Lu6/j;->b:Lu6/h;

    iget-object p0, p0, Lu6/h;->b:Lf6/h;

    return-object p0
.end method

.method public final getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 0

    iget-object p0, p0, Lu6/j;->b:Lu6/h;

    invoke-interface {p0}, Lh8/a;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object p0

    return-object p0
.end method
