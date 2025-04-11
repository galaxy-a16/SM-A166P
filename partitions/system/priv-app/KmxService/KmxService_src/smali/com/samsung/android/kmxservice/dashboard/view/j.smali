.class public final synthetic Lcom/samsung/android/kmxservice/dashboard/view/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/j;->a:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/j;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/kmxservice/dashboard/view/j;->c:Z

    iput-object p4, p0, Lcom/samsung/android/kmxservice/dashboard/view/j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/j;->c:Z

    iget-object v1, p0, Lcom/samsung/android/kmxservice/dashboard/view/j;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/dashboard/view/j;->a:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/j;->b:Ljava/lang/String;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->c(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;Ljava/lang/String;ZLjava/lang/String;Landroid/view/View;)V

    return-void
.end method
