.class public final Landroidx/work/impl/d;
.super Ly0/a;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/work/impl/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/d;

    invoke-direct {v0}, Landroidx/work/impl/d;-><init>()V

    sput-object v0, Landroidx/work/impl/d;->a:Landroidx/work/impl/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xb

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Ly0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final migrate(La1/b;)V
    .locals 0

    const-string p0, "ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0"

    check-cast p1, Landroidx/sqlite/db/framework/b;

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    return-void
.end method
