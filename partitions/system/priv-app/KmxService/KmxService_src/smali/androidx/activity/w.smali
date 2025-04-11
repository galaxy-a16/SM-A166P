.class public final Landroidx/activity/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/activity/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/activity/w;

    invoke-direct {v0}, Landroidx/activity/w;-><init>()V

    sput-object v0, Landroidx/activity/w;->a:Landroidx/activity/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lvb/b;Lvb/b;Lvb/a;Lvb/a;)Landroid/window/OnBackInvokedCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/b;",
            "Lvb/b;",
            "Lvb/a;",
            "Lvb/a;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    const-string p0, "onBackStarted"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onBackProgressed"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onBackInvoked"

    invoke-static {p3, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onBackCancelled"

    invoke-static {p4, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/activity/v;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/activity/v;-><init>(Lvb/b;Lvb/b;Lvb/a;Lvb/a;)V

    return-object p0
.end method
