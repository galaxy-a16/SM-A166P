.class public final synthetic Lcom/android/server/permission/access/appop/AppOpService$notifyOpChangedForAllPkgsInUid$2$1$1;
.super Ljava/lang/Object;
.source "AppOpService.kt"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/access/appop/AppOpService$notifyOpChangedForAllPkgsInUid$2$1$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService$notifyOpChangedForAllPkgsInUid$2$1$1;

    invoke-direct {v0}, Lcom/android/server/permission/access/appop/AppOpService$notifyOpChangedForAllPkgsInUid$2$1$1;-><init>()V

    sput-object v0, Lcom/android/server/permission/access/appop/AppOpService$notifyOpChangedForAllPkgsInUid$2$1$1;->INSTANCE:Lcom/android/server/permission/access/appop/AppOpService$notifyOpChangedForAllPkgsInUid$2$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/server/permission/access/appop/AppOpService;Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;)V
    .locals 0

    .line 349
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/permission/access/appop/AppOpService;->notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 349
    check-cast p1, Lcom/android/server/permission/access/appop/AppOpService;

    check-cast p2, Lcom/android/server/appop/OnOpModeChangedListener;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    check-cast p5, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/appop/AppOpService$notifyOpChangedForAllPkgsInUid$2$1$1;->accept(Lcom/android/server/permission/access/appop/AppOpService;Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;)V

    return-void
.end method
