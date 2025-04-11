.class public final Lkotlinx/coroutines/channels/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lkotlinx/coroutines/channels/o;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlinx/coroutines/channels/o;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/o;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/o;->a:Lkotlinx/coroutines/channels/o;

    const-string v1, "kotlinx.coroutines.channels.defaultBuffer"

    const/16 v0, 0x40

    int-to-long v2, v0

    const/4 v0, 0x1

    int-to-long v4, v0

    const v0, 0x7ffffffe

    int-to-long v6, v0

    invoke-static/range {v1 .. v7}, Lv4/b;->W(Ljava/lang/String;JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lkotlinx/coroutines/channels/o;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
