.class public final synthetic Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$ValueDumper;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityController;->$r8$lambda$pmefAHh4kRxvWjZOMKEt4dhgnlA(Ljava/io/PrintWriter;Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V

    return-void
.end method
