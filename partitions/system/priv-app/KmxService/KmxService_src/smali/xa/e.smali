.class public final Lxa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqa/c;


# instance fields
.field public final a:Lva/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->e(Landroid/content/Context;)Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->g()Lva/g;

    move-result-object p1

    iput-object p1, p0, Lxa/e;->a:Lva/g;

    return-void
.end method
