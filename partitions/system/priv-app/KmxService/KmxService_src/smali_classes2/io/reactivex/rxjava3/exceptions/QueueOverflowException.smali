.class public final Lio/reactivex/rxjava3/exceptions/QueueOverflowException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "Queue overflow due to illegal concurrent onNext calls or a bug in an operator"

.field private static final serialVersionUID:J = 0x7633afeb6fd3471eL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Queue overflow due to illegal concurrent onNext calls or a bug in an operator"

    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
