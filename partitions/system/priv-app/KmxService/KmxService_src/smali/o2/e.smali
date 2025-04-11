.class public final Lo2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Lo2/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo2/e;

    invoke-direct {v0}, Lo2/e;-><init>()V

    sput-object v0, Lo2/e;->a:Lo2/e;

    const-string v0, "clientMetrics"

    invoke-static {v0}, Lc5/b;->b(Ljava/lang/String;)Lc5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    check-cast p2, Lc5/d;

    const/4 p0, 0x0

    throw p0
.end method
