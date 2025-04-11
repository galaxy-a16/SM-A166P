.class public abstract Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "BatteryChrgTracker"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"BatteryChrgTracker\")"

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ln1/b;->a:Ljava/lang/String;

    return-void
.end method
