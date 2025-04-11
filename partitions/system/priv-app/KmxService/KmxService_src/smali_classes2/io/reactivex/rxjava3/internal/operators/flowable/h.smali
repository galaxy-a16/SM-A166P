.class public abstract synthetic Lio/reactivex/rxjava3/internal/operators/flowable/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;->values()[Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/h;->a:[I

    :try_start_0
    sget-object v1, Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;->DROP_LATEST:Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/h;->a:[I

    sget-object v1, Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;->DROP_OLDEST:Lio/reactivex/rxjava3/core/BackpressureOverflowStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
