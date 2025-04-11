.class public final Landroidx/work/impl/h;
.super Ly0/a;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/work/impl/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/h;

    invoke-direct {v0}, Landroidx/work/impl/h;-><init>()V

    sput-object v0, Landroidx/work/impl/h;->a:Landroidx/work/impl/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ly0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final migrate(La1/b;)V
    .locals 0

    const-string p0, "\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    "

    check-cast p1, Landroidx/sqlite/db/framework/b;

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    return-void
.end method
