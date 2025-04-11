.class public final Lcom/android/server/selectiontoolbar/SelectionToolbarServiceNameResolver;
.super Ljava/lang/Object;
.source "SelectionToolbarServiceNameResolver.java"

# interfaces
.implements Lcom/android/server/infra/ServiceNameResolver;


# static fields
.field public static final SELECTION_TOOLBAR_SERVICE_NAME:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/selectiontoolbar/DefaultSelectionToolbarRenderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/selectiontoolbar/SelectionToolbarServiceNameResolver;->SELECTION_TOOLBAR_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpShort(Ljava/io/PrintWriter;)V
    .locals 0

    const-string/jumbo p0, "service="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/selectiontoolbar/SelectionToolbarServiceNameResolver;->SELECTION_TOOLBAR_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public dumpShort(Ljava/io/PrintWriter;I)V
    .locals 1

    const-string v0, "defaultService="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultServiceName(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/server/selectiontoolbar/SelectionToolbarServiceNameResolver;->SELECTION_TOOLBAR_SERVICE_NAME:Ljava/lang/String;

    return-object p0
.end method
