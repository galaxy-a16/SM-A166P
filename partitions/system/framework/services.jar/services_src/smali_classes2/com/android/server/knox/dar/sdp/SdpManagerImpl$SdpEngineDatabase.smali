.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# instance fields
.field public mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

.field public mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public static bridge synthetic -$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)Landroid/util/SparseArray;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->updateEngineListLocked()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method


# virtual methods
.method public final getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->-$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getEngineListLocked()Landroid/util/SparseArray;
    .locals 2

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->-$$Nest$mgetEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "SdpManagerImpl"

    const-string v1, "getEngineListLocked :: no engine found"

    invoke-static {p0, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->-$$Nest$mremoveEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method public final storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->-$$Nest$mupdateEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0
.end method

.method public final updateEngineListLocked()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;)I

    move-result p0

    return p0
.end method
