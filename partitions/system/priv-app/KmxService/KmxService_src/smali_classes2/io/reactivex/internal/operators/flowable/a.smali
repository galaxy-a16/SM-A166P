.class public abstract Lio/reactivex/internal/operators/flowable/a;
.super Leb/e;
.source "SourceFile"


# instance fields
.field public final b:Leb/e;


# direct methods
.method public constructor <init>(Leb/e;)V
    .locals 0

    invoke-direct {p0}, Leb/e;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Leb/e;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
