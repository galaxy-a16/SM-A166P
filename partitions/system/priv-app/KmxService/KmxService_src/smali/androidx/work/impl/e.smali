.class public final Landroidx/work/impl/e;
.super Ly0/a;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/work/impl/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/e;

    invoke-direct {v0}, Landroidx/work/impl/e;-><init>()V

    sput-object v0, Landroidx/work/impl/e;->a:Landroidx/work/impl/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Ly0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final migrate(La1/b;)V
    .locals 0

    check-cast p1, Landroidx/sqlite/db/framework/b;

    const-string p0, "UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL "

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    const-string p0, "UPDATE workspec SET content_uri_triggers = x\'\' WHERE content_uri_triggers is NULL"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/b;->q(Ljava/lang/String;)V

    return-void
.end method
